(define (domain moving-labyrinth)
(:requirements :typing :adl :equality :action-costs :fluents)
(:types
    ;; card consisting of 4 sectors 
    ;; NW | NE
    ;;--------
    ;; SW | SE
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
    ;; moving on ?c from sector ?d1from ?d2from to sector ?d1to ?d2to is blocked
    (blocked ?c - card ?d1from - directionV ?d2from - directionH ?d1to - directionV ?d2to - directionH)
    ;; robot is located on card ?c
    (robot-at-card ?c - card)
    ;; robot is located in sector ?d1 ?d2
    (robot-at-cell ?d1 - directionV ?d2 - directionH)
    ;; card ?c is positioned in the grid at ?p1 ?p2 
    (card-at ?c - card ?p1 - gridpos ?p2 - gridpos)
    ;; flag to indicate that a card is currently moving and the robot cannot move
    (cards-moving)
    ;; flags to indicate that a row/column is rotating in the corresponding direction
    (cards-moving-west)
    (cards-moving-east)
    (cards-moving-south)
    (cards-moving-north)
    ;; the card whose position needs to be updated next while rotating
    (next-moving-card ?c - card)
    ;; the card that was removed to rotate and which needs to be placed at the beginning/end of the row/column 
    (new-headtail-card ?c - card)
    ;; flag indicating that the robot left the maze e.i. that the goal has been reached
    (left)
)

(:functions
    (total-cost) - number
    (between-cards-cost) - number
    (inside-cards-cost) - number
    (move-card) - number
)

;; moves the robot between to cards: ?cfrom (NW) -> ?cto (NE) or ?cfrom (SW) -> ?cto (SE)
(:action move-between-cards-west
    :parameters ( ?cfrom - card ?p1from - gridpos ?p2from - gridpos ?d1from - directionV ?d2from - directionH ?cto - card ?p1to - gridpos ?p2to - gridpos ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (= ?d2from w)
            (robot-at-card ?cfrom)
            (robot-at-cell ?d1from ?d2from)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p2from ?p2to)
            (= ?p1from ?p1to)
            (= ?d1from ?d1to)
            (not (= ?d2from ?d2to))
            (not (= ?d1to ?d2to))
        )
    :effect
        (and
            (not (robot-at-card ?cfrom))
            (not (robot-at-cell ?d1from ?d2from))
            (robot-at-card ?cto)
            (robot-at-cell ?d1to ?d2to)
            (increase (total-cost) (between-cards-cost))
        )
)

;; moves the robot between to cards: ?cfrom (NE) -> ?cto (NW) or ?cfrom (SE) -> ?cto (SW)
(:action move-between-cards-est
    :parameters ( ?cfrom - card ?p1from - gridpos ?p2from - gridpos ?d1from - directionV ?d2from - directionH ?cto - card ?p1to - gridpos ?p2to - gridpos ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (= ?d2from e)
            (robot-at-card ?cfrom)
            (robot-at-cell ?d1from ?d2from)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p2to ?p2from)
            (= ?p1from ?p1to)
            (= ?d1from ?d1to)
            (not (= ?d2from ?d2to))
            (not (= ?d1to ?d2to))
        )
    :effect
        (and
            (not (robot-at-card ?cfrom))
            (not (robot-at-cell ?d1from ?d2from))
            (robot-at-card ?cto)
            (robot-at-cell ?d1to ?d2to)
            (increase (total-cost) (between-cards-cost))
        )
)

;; moves the robot between to cards: ?cfrom (NW) -> ?cto (SW) or ?cfrom (NE) -> ?cto (SE)
(:action move-between-cards-north
    :parameters ( ?cfrom - card ?p1from - gridpos ?p2from - gridpos ?d1from - directionV ?d2from - directionH ?cto - card ?p1to - gridpos ?p2to - gridpos ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (= ?d1from n)
            (robot-at-card ?cfrom)
            (robot-at-cell ?d1from ?d2from)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p1from ?p1to)
            (= ?p2from ?p2to)
            (= ?d2from ?d2to)
            (not (= ?d1from ?d1to))
            (not (= ?d1to ?d2to))
        )
    :effect
        (and
            (not (robot-at-card ?cfrom))
            (not (robot-at-cell ?d1from ?d2from))
            (robot-at-card ?cto)
            (robot-at-cell ?d1to ?d2to)
            (increase (total-cost) (between-cards-cost))
        )
)

;; moves the robot between to cards: ?cfrom (SW) -> ?cto (NW) or ?cfrom (SE) -> ?cto (NE)
(:action move-between-cards-south
    :parameters ( ?cfrom - card ?p1from - gridpos ?p2from - gridpos ?d1from - directionV ?d2from - directionH ?cto - card ?p1to - gridpos ?p2to - gridpos ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (= ?d1from s)
            (robot-at-card ?cfrom)
            (robot-at-cell ?d1from ?d2from)
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (next ?p1to ?p1from)
            (= ?p2from ?p2to)
            (= ?d2from ?d2to)
            (not (= ?d1from ?d1to))
            (not (= ?d1to ?d2to))
        )
    :effect
        (and
            (not (robot-at-card ?cfrom))
            (not (robot-at-cell ?d1from ?d2from))
            (robot-at-card ?cto)
            (robot-at-cell ?d1to ?d2to)
            (increase (total-cost) (between-cards-cost))
        )
)

;; moves the robot horizontally within a card 
;; this is only possible if there is no wall between the sectors (blocked)
(:action move-inside-cards-h
    :parameters ( ?c - card ?d1from - directionV ?d2from - directionH ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (robot-at-card ?c)
            (robot-at-cell ?d1from ?d2from)
            (= ?d1from ?d1to)
            (not (= ?d1to ?d2to))
            (not (blocked ?c ?d1from ?d2from ?d1to ?d2to))
        )
    :effect
        (and
            (not (robot-at-cell ?d1from ?d2from))
            (robot-at-cell ?d1to ?d2to)
            (increase (total-cost) (inside-cards-cost))
        )
)

;; moves the robot vertically within a card 
;; this is only possible if there is no wall between the sectors (blocked)
(:action move-inside-cards-v
    :parameters ( ?c - card ?d1from - directionV ?d2from - directionH ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (robot-at-card ?c)
            (robot-at-cell ?d1from ?d2from)
            (= ?d2from ?d2to)
            (not (= ?d1to ?d2to))
            (not (blocked ?c ?d1from ?d2from ?d1to ?d2to))
        )
    :effect
        (and
            (not (robot-at-cell ?d1from ?d2from))
            (robot-at-cell ?d1to ?d2to)
            (increase (total-cost) (inside-cards-cost))
        )
)


;; there 3 (start, move, stop) for each direction to rotate the cards
;; rotating ends in a deadend if the card with the robot in the row/column that is rotated
;; ----------------------------------------------------------------------------------------

;; starts rotation
;; saves the card with the minimal index
;; determines which card should be updated next the corresponding move action
;; and makes all other actions inapplicable by setting cards-moving and cards-moving-west
(:action start-move-card-row-west
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos) 
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-west))
        (not (robot-at-card ?cm))
        (card-at ?cm ?rowindex ?pcolumn )
        (min-pos ?pcolumn)
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?nextcolumn ?pcolumn)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-west)
        (not (card-at ?cm ?rowindex ?pcolumn ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

;; updates the grid column index of ?cm which is the next card to update
(:action move-card-row-west
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos ?prevcolumn - gridpos) 
:precondition
    (and
        (cards-moving)
        (cards-moving-west)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?pcolumn ?prevcolumn)
        (next ?nextcolumn ?pcolumn)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-west)
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

;; stops rotation
;; updates the grid index of the card specified by the start move action in new-headtail-card
(:action stop-move-card-row-west
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?prevcolumn - gridpos ?max - gridpos ?newtc - card) 
:precondition
    (and
        (cards-moving)
        (cards-moving-west)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (next ?pcolumn ?prevcolumn)
        (max-pos ?max)
        (= ?pcolumn ?max)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-west))
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (card-at ?newtc ?rowindex ?max)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
    )
)


;; ----------------------------------------------------------------------------------------

(:action start-move-card-row-east
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos) 
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-east))
        (not (robot-at-card ?cm))
        (card-at ?cm ?rowindex ?pcolumn )
        (max-pos ?pcolumn)
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?pcolumn ?nextcolumn )
    )
:effect
    (and
        (cards-moving)
        (cards-moving-east)
        (not (card-at ?cm ?rowindex ?pcolumn ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-row-east
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?cnext - card ?nextcolumn - gridpos ?prevcolumn - gridpos) 
:precondition
    (and
        (cards-moving)
        (cards-moving-east)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (card-at ?cnext ?rowindex ?nextcolumn)
        (next ?prevcolumn ?pcolumn)
        (next ?pcolumn ?nextcolumn)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-east)
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

(:action stop-move-card-row-east
:parameters(?cm - card ?rowindex - gridpos ?pcolumn - gridpos ?prevcolumn - gridpos ?min - gridpos ?newtc - card) 
:precondition
    (and
        (cards-moving)
        (cards-moving-east)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?rowindex ?pcolumn )
        (next  ?prevcolumn ?pcolumn)
        (min-pos ?min)
        (= ?pcolumn ?min)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-east))
        (not (card-at ?cm ?rowindex ?pcolumn))
        (card-at ?cm ?rowindex ?prevcolumn)
        (card-at ?newtc ?rowindex ?min)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
    )
)

;; ----------------------------------------------------------------------------------------

(:action start-move-card-column-north
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos) 
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-north))
        (not (robot-at-card ?cm))
        (card-at ?cm ?prow ?columnindex )
        (min-pos ?prow)
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?prow ?nextrow )
    )
:effect
    (and
        (cards-moving)
        (cards-moving-north)
        (not (card-at ?cm ?columnindex ?prow ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-column-north
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos ?prerow - gridpos) 
:precondition
    (and
        (cards-moving)
        (cards-moving-north)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?columnindex ?prow )
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?prow ?prerow)
        (next ?nextrow ?prow)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-north)
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

(:action stop-move-card-column-north
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos ?prerow - gridpos ?max - gridpos ?newtc - card) 
:precondition
    (and
        (cards-moving)
        (cards-moving-north)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?prow ?columnindex )
        (next ?prow ?prerow)
        (max-pos ?max)
        (= ?prow ?max)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-north))
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (card-at ?newtc ?max ?columnindex)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
    )
)

;; ----------------------------------------------------------------------------------------

(:action start-move-card-column-south
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos) 
:precondition
    (and
        (not (cards-moving))
        (not (cards-moving-south))
        (not (robot-at-card ?cm))
        (card-at ?cm ?prow ?columnindex )
        (max-pos ?prow)
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?nextrow ?prow)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-south)
        (not (card-at ?cm ?columnindex ?prow ))
        (new-headtail-card ?cm)
        (next-moving-card ?cnext)
        (increase (total-cost) (move-card))
    )
)

(:action move-card-column-south
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos  ?cnext - card ?nextrow - gridpos ?prerow - gridpos) 
:precondition
    (and
        (cards-moving)
        (cards-moving-south)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?columnindex ?prow )
        (card-at ?cnext ?nextrow ?columnindex)
        (next ?prerow ?prow)
        (next ?prow ?nextrow)
    )
:effect
    (and
        (cards-moving)
        (cards-moving-south)
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (not (next-moving-card ?cm))
        (next-moving-card ?cnext)
    )
)

(:action stop-move-card-column-south
:parameters(?cm - card ?prow - gridpos ?columnindex - gridpos ?prerow - gridpos ?min - gridpos ?newtc - card) 
:precondition
    (and
        (cards-moving)
        (cards-moving-south)
        (not (robot-at-card ?cm))
        (next-moving-card ?cm)
        (card-at ?cm ?prow ?columnindex )
        (next ?prerow ?prow)
        (min-pos ?min)
        (= ?prow ?min)
        (new-headtail-card ?newtc)
    )
:effect
    (and
        (not (cards-moving))
        (not (cards-moving-south))
        (not (card-at ?cm ?prow ?columnindex))
        (card-at ?cm ?prerow ?columnindex)
        (card-at ?newtc ?min ?columnindex)
        (not (new-headtail-card ?newtc))
        (not (next-moving-card ?cm))
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
        (not (cards-moving))
        (robot-at-card ?c)
        (robot-at-cell s e)
        (card-at ?c ?prow ?pcolumn)
        (max-pos ?prow)
        (max-pos ?pcolumn)
    )
:effect
    (and
        (left)
    )
)
)
