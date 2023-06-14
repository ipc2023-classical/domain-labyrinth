(define (domain labyrinth)
(:requirements :typing :adl :equality :action-costs)
(:types
    ;; card with 2 to 4 paths
    card - object
    direction - object
    ;; vertical direction: N S
    directionV - direction
    ;; horizontal directions: W E
    directionH - direction
    ;; values for positions of the card in the grid
    gridpos - object
)

(:constants 
    S N - directionV
	W E - directionH
)

(:predicates
    ;; ordering of values for grid positions ?p1 = ?p2 + 1
    (next ?p1 - gridpos ?p2 - gridpos)
    ;; maximal grid index
    (max-pos ?p - gridpos)
    ;; minimal grid index
    (min-pos ?p - gridpos)
    ;; moving from ?c in direction ?d is blocked by a wall
    (blocked ?c - card ?d - direction)
    ;; robot is located on card ?c
    (robot-at ?c - card)
    ;; card ?c is positioned in the grid at ?p1 ?p2 
    (card-at ?c - card ?p1 - gridpos ?p2 - gridpos)
    ;; flag to indicate that a card is currently mowing an the robot cannot move
    (cards-mowing)
    ;; flags to indicate that a row/column is rotating in the corresponding direction
    (cards-mowing-west)
    (cards-mowing-east)
    (cards-mowing-south)
    (cards-mowing-north)
    ;; the card whose position needs to be updated next while rotating
    (next-mowing-card ?c - card)
    ;; the card that was removed to rotate and which needs to be placed at the beginning/end of the row/column 
    (new-headtail-card ?c - card)
    ;; flag indicating that the robot left the maze e.i. that the goal has been reached
    (left)
)

(:functions
    (total-cost) - number
    (move-robot-cost) - number
    (move-card) - number
)

;; moves the robot between to cards
(:action move-west
    :parameters (?cfrom - card ?p1from - gridpos ?p2from - gridpos ?dfrom - directionH ?cto - card ?p1to - gridpos ?p2to - gridpos ?dto - directionH)
    :precondition
        (and
            (not (cards-mowing))
            (= ?dfrom w)
            (robot-at ?cfrom)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p2from ?p2to)
            (= ?p1from ?p1to)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)

(:action move-east
    :parameters (?cfrom - card ?p1from - gridpos ?p2from - gridpos ?dfrom - directionH ?cto - card ?p1to - gridpos ?p2to - gridpos ?dto - directionH)
    :precondition
        (and
            (not (cards-mowing))
            (= ?dfrom e)
            (robot-at ?cfrom)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p2to ?p2from)
            (= ?p1from ?p1to)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)

(:action move-north
    :parameters (?cfrom - card ?p1from - gridpos ?p2from - gridpos ?dfrom - directionV ?cto - card ?p1to - gridpos ?p2to - gridpos ?dto - directionV)
    :precondition
        (and
            (not (cards-mowing))
            (= ?dfrom n)
            (robot-at ?cfrom)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p1from ?p1to)
            (= ?p2from ?p2to)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)

(:action move-south
    :parameters (?cfrom - card ?p1from - gridpos ?p2from - gridpos ?dfrom - directionV ?cto - card ?p1to - gridpos ?p2to - gridpos ?dto - directionV)
    :precondition
        (and
            (not (cards-mowing))
            (= ?dfrom s)
            (robot-at ?cfrom)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p1to ?p1from)
            (= ?p2from ?p2to)
            (not (= ?dfrom ?dto))
            (not (blocked ?cfrom ?dfrom))
            (not (blocked ?cto ?dto))
        )
    :effect
        (and
            (not (robot-at ?cfrom))
            (robot-at ?cto)
            (increase (total-cost) (move-robot-cost))
        )
)

;; there 3 (start, move, stop) for each direction to rotate the cards
;; rotating ends in a deadend if the card with the robot in the row/column that is rotated
;; ----------------------------------------------------------------------------------------

;; starts rotation
;; saves the card with the minimal index
;; determines which card should be updated next the corresponding move action
;; and makes all other actions inapplicable by setting cards-mowing and cards-mowing-west
(:action start-move-card-row-west
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos) 
:precondition
    (and
        (not (cards-mowing))
        (not (cards-mowing-west))
        (not (robot-at ?cm))
        (card-at ?cm ?rowindex ?pcolumn )
        (min-pos ?pcolumn)
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?nextcolumn ?pcolumn)
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-west)
        (not (card-at ?cm ?rowindex ?pcolumn ))
        (new-headtail-card ?cm)
        (next-mowing-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

;; updates the grid column index of ?cm which is the next card to update
(:action move-card-row-west
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos ?prevcolumn - gridpos) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-west)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?pcolumn ?prevcolumn)
        (next ?nextcolumn ?pcolumn)
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-west)
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (not (next-mowing-card ?cm))
        (next-mowing-card ?cnext)
    )
)

;; stops rotation
;; updates the grid index of the card specified by the start move action in new-headtail-card
(:action stop-move-card-row-west
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?prevcolumn - gridpos ?max - gridpos ?newtc - card) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-west)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (next ?pcolumn ?prevcolumn)
        (max-pos ?max)
        (= ?pcolumn ?max)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-mowing))
        (not (cards-mowing-west))
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (card-at ?newtc ?rowindex ?max)
        (not (new-headtail-card ?newtc))
        (not (next-mowing-card ?cm))
    )
)


;; ----------------------------------------------------------------------------------------

(:action start-move-card-row-east
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos) 
:precondition
    (and
        (not (cards-mowing))
        (not (cards-mowing-east))
        (not (robot-at ?cm))
        (card-at ?cm ?rowindex ?pcolumn )
        (max-pos ?pcolumn)
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?pcolumn ?nextcolumn )
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-east)
        (not (card-at ?cm ?rowindex ?pcolumn ))
        (new-headtail-card ?cm)
        (next-mowing-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-row-east
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos ?prevcolumn - gridpos) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-east)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?prevcolumn ?pcolumn)
        (next ?pcolumn ?nextcolumn)
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-east)
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (not (next-mowing-card ?cm))
        (next-mowing-card ?cnext)
    )
)

(:action stop-move-card-row-east
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?prevcolumn - gridpos ?min - gridpos ?newtc - card) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-east)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (next  ?prevcolumn ?pcolumn)
        (min-pos ?min)
        (= ?pcolumn ?min)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-mowing))
        (not (cards-mowing-east))
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (card-at ?newtc ?rowindex ?min)
        (not (new-headtail-card ?newtc))
        (not (next-mowing-card ?cm))
    )
)

;; ----------------------------------------------------------------------------------------

(:action start-move-card-column-north
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos) 
:precondition
    (and
        (not (cards-mowing))
        (not (cards-mowing-north))
        (not (robot-at ?cm))
        (card-at ?cm ?prow ?columnindex )
        (min-pos ?prow)
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?prow ?nextrow )
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-north)
        (not (card-at ?cm ?columnindex ?prow ))
        (new-headtail-card ?cm)
        (next-mowing-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-column-north
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos ?prerow - gridpos) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-north)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?columnindex ?prow )
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?prow ?prerow)
        (next ?nextrow ?prow)
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-north)
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (not (next-mowing-card ?cm))
        (next-mowing-card ?cnext)
    )
)

(:action stop-move-card-column-north
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos ?prerow - gridpos ?max - gridpos ?newtc - card) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-north)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?prow ?columnindex )
        (next ?prow ?prerow)
        (max-pos ?max)
        (= ?prow ?max)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-mowing))
        (not (cards-mowing-north))
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (card-at ?newtc ?max ?columnindex)
        (not (new-headtail-card ?newtc))
        (not (next-mowing-card ?cm))
    )
)

;; ----------------------------------------------------------------------------------------

(:action start-move-card-column-south
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos) 
:precondition
    (and
        (not (cards-mowing))
        (not (cards-mowing-south))
        (not (robot-at ?cm))
        (card-at ?cm ?prow ?columnindex )
        (max-pos ?prow)
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?nextrow ?prow)
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-south)
        (not (card-at ?cm ?columnindex ?prow ))
        (new-headtail-card ?cm)
        (next-mowing-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-column-south
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos ?prerow - gridpos) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-south)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?columnindex ?prow )
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?prerow ?prow)
        (next ?prow ?nextrow)
    )
:effect
    (and
        (cards-mowing)
        (cards-mowing-south)
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (not (next-mowing-card ?cm))
        (next-mowing-card ?cnext)
    )
)

(:action stop-move-card-column-south
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos ?prerow - gridpos ?min - gridpos ?newtc - card) 
:precondition
    (and
        (cards-mowing)
        (cards-mowing-south)
        (not (robot-at ?cm))
        (next-mowing-card ?cm)
        (card-at ?cm ?prow ?columnindex )
        (next ?prerow ?prow)
        (min-pos ?min)
        (= ?prow ?min)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-mowing))
        (not (cards-mowing-south))
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (card-at ?newtc ?min ?columnindex)
        (not (new-headtail-card ?newtc))
        (not (next-mowing-card ?cm))
    )
)

;; ----------------------------------------------------------------------------------------

;; checks whether the robot can leave the labyrinth i.e
;; whether the card the robot is currently on is in the bottom right corner
;; and the rover is in sector SE
(:action leave
:parameters(?c - card ?prow - gridpos ?pcolumn - gridpos) 
:precondition
    (and
        (not (cards-mowing))
        (robot-at ?c)
        (card-at ?c ?prow ?pcolumn)
        (max-pos ?prow)
        (max-pos ?pcolumn)
        (not (blocked ?c s ))
    )
:effect
    (and
        (left)
    )
)
)
