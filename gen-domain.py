#!/usr/bin/env python3

import sys

def moveCardAction(direction, grid_size):
    if direction == 'north':
        fixcoord = 'p2'
        freecoord = 'p1'
    elif direction == 'south':
        fixcoord = 'p2'
        freecoord = 'p1'
    elif direction == 'east':
        fixcoord = 'p1'
        freecoord = 'p2'
    elif direction == 'west':
        fixcoord = 'p1'
        freecoord = 'p2'

    params = [f'?{fixcoord} - gridpos']
    for i in range(1, grid_size + 1):
        params += [f'?card{i} - card']
        params += [f'?card{i}-{freecoord} - gridpos']

    prevail = []
    prevail += [f'(MIN-POS ?card1-{freecoord})']
    prevail += [f'(MAX-POS ?card{grid_size}-{freecoord})']
    for i in range(1, grid_size):
        prevail += [f'(NEXT ?card{i + 1}-{freecoord} ?card{i}-{freecoord})']

    for i in range(1, grid_size + 1):
        prevail += [f'(not (robot-at-card ?card{i}))']

    pre = []
    for i in range(1, grid_size + 1):
        if fixcoord == 'p1':
            pos = f'?p1 ?card{i}-p2'
        else:
            pos = f'?card{i}-p1 ?p2'
        pre += [f'(card-at ?card{i} {pos})']

    eff = [f'(not {x})' for x in pre]
    for i in range(1, grid_size + 1):
        if direction in ['south', 'east']:
            n = i + 1
        else:
            n = i - 1
        if n > grid_size:
            n = 1
        elif n < 1:
            n = grid_size

        if fixcoord == 'p1':
            pos = f'?p1 ?card{n}-p2'
        else:
            pos = f'?card{n}-p1 ?p2'
        eff += [f'(card-at ?card{i} {pos})']



    params = ' '.join(params)
    pre = '\n            '.join(prevail + pre)
    eff = '\n            '.join(eff)

    s = f'''
(:action move-card-{direction}-{grid_size}
    :parameters ({params})
    :precondition
        (and
            {pre}
        )
    :effect
        (and
            {eff}
            (increase (total-cost) (move-card))
        )
)
'''
    return s

def genDomain(additional_predicates, move_cards):
    s = f'''
(define (domain labyrinth)
(:requirements :adl :action-costs)

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
    ;; coordinates for positions of the card in the grid
    gridpos - object
)

(:constants
    S N - directionV
    W E - directionH
)

(:predicates
    ;; ordering of values for grid positions ?p1 = ?p2 + 1
    (NEXT ?p1 - gridpos ?p2 - gridpos)
    ;; maximal grid index
    (MAX-POS ?p - gridpos)
    ;; minimal grid index
    (MIN-POS ?p - gridpos)
    ;; moving from ?c in direction ?d is blocked by a wall
    (BLOCKED ?c - card ?d - direction)
    ;; robot is located on card ?c
    (robot-at-card ?c - card)
    ;; robot is located in sector ?d1 ?d2
    (robot-at-cell ?d1 - directionV ?d2 - directionH)
    ;; card ?c is positioned in the grid at ?p1 ?p2
    (card-at ?c - card ?p1 - gridpos ?p2 - gridpos)
    ;; flag to indicate that a card is currently moving and the robot cannot move
    ;; this is used only for stepwise rotation of cards
    (cards-moving)
    {additional_predicates}
    ;; flag indicating that the robot left the maze e.i. that the goal has been reached
    (left)
)

(:functions
    (total-cost) - number
    (between-cards-cost) - number
    (inside-cards-cost) - number
    (move-card) - number
)

;; Moves the robot between two different cards.
;; The robot moves from
;;    the sector (?d1from ?d2from) on the card ?cfrom located at (?p1from ?p2from)
;; to
;;    the sector (?d1to ?d2to) on the card ?cto located at (?p1to ?p2to)
;; Note that movement between cards can never be blocked they just need to be
;; aligned next to each other.
(:action move-between-cards
    :parameters (?cfrom - card ?p1from - gridpos ?p2from - gridpos
                 ?d1from - directionV ?d2from - directionH
                 ?cto - card ?p1to - gridpos ?p2to - gridpos
                 ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (card-at ?cfrom ?p1from ?p2from)
            (card-at ?cto ?p1to ?p2to)
            (robot-at-card ?cfrom)
            (robot-at-cell ?d1from ?d2from)

            (or
                ;; (NW) to (NE) or (SW) to (SE)
                (and (= ?d2from W)
                     (NEXT ?p2from ?p2to)
                     (= ?p1from ?p1to)
                     (= ?d1from ?d1to)
                     (not (= ?d2from ?d2to))
                     (not (= ?d1to ?d2to)))

                ;; (NE) to (NW) or (SE) to (SW)
                (and (= ?d2from E)
                     (NEXT ?p2to ?p2from)
                     (= ?p1from ?p1to)
                     (= ?d1from ?d1to)
                     (not (= ?d2from ?d2to))
                     (not (= ?d1to ?d2to))
                )

                ;; (NW) to (SW) or (NE) to (SE)
                (and (= ?d1from N)
                     (NEXT ?p1from ?p1to)
                     (= ?p2from ?p2to)
                     (= ?d2from ?d2to)
                     (not (= ?d1from ?d1to))
                     (not (= ?d1to ?d2to))
                )

                ;; (SW) to (NW) or (SE) to (NE)
                (and (= ?d1from S)
                     (NEXT ?p1to ?p1from)
                     (= ?p2from ?p2to)
                     (= ?d2from ?d2to)
                     (not (= ?d1from ?d1to))
                     (not (= ?d1to ?d2to))
                )
            )
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

;; Moves the robot between the sectors inside the card ?c
(:action move-inside-card
    :parameters (?c - card
                 ?d1from - directionV ?d2from - directionH
                 ?d1to - directionV ?d2to - directionH)
    :precondition
        (and
            (not (cards-moving))
            (robot-at-card ?c)
            (robot-at-cell ?d1from ?d2from)
            (not (BLOCKED ?c ?d1from ?d2from ?d1to ?d2to))
            (or
                (and (= ?d1from ?d1to)
                     (not (= ?d2from ?d2to))
                )
                (and (= ?d2from ?d2to)
                     (not (= ?d1from ?d1to))
                )
            )
        )
    :effect
        (and
            (not (robot-at-cell ?d1from ?d2from))
            (robot-at-cell ?d1to ?d2to)
            (increase (total-cost) (inside-cards-cost))
        )
)

{move_cards}

;; TODO: Replace this with a goal (goal-at gridpos/sector)?
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
        (MAX-POS ?prow)
        (MAX-POS ?pcolumn)
    )
:effect
    (and
        (left)
    )
)
)
'''
    return s

def htg(max_grid_size):
    actions = []
    for grid_size in range(2, max_grid_size + 1):
        for direction in ['north', 'south', 'east', 'west']:
            actions += [moveCardAction(direction, grid_size)]

    actions = '\n\n'.join(actions)
    s = genDomain('', actions)
    print(s)
    return 0

def stepwise():
    predicates = '''
    ;; flags to indicate that a row/column is rotating in the corresponding direction
    (cards-moving-west)
    (cards-moving-east)
    (cards-moving-south)
    (cards-moving-north)
    ;; the card whose position needs to be updated next while rotating
    (next-moving-card ?c - card)
    ;; the card that was removed to rotate and which needs to be placed at the beginning/end of the row/column
    (new-headtail-card ?c - card)
'''

    actions = '''
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
        (MIN-POS ?pcolumn)
        (card-at ?cnext ?rowindex ?nextcolumn)
        (NEXT ?nextcolumn ?pcolumn)
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
        (NEXT ?pcolumn ?prevcolumn)
        (NEXT ?nextcolumn ?pcolumn)
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
        (NEXT ?pcolumn ?prevcolumn)
        (MAX-POS ?max)
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
        (MAX-POS ?pcolumn)
        (card-at ?cnext ?rowindex ?nextcolumn)
        (NEXT ?pcolumn ?nextcolumn )
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
        (NEXT ?prevcolumn ?pcolumn)
        (NEXT ?pcolumn ?nextcolumn)
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
        (NEXT  ?prevcolumn ?pcolumn)
        (MIN-POS ?min)
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
        (MIN-POS ?prow)
        (card-at ?cnext ?nextrow ?columnindex)
        (NEXT ?prow ?nextrow )
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
        (NEXT ?prow ?prerow)
        (NEXT ?nextrow ?prow)
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
        (NEXT ?prow ?prerow)
        (MAX-POS ?max)
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
        (MAX-POS ?prow)
        (card-at ?cnext ?nextrow ?columnindex)
        (NEXT ?nextrow ?prow)
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
        (NEXT ?prerow ?prow)
        (NEXT ?prow ?nextrow)
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
        (NEXT ?prerow ?prow)
        (MIN-POS ?min)
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
'''
    s = genDomain(predicates, actions)
    print(s)
    return 0

if __name__ == '__main__':
    if len(sys.argv) not in [2, 3]:
        print(f'Usage: {sys.argv[0]} htg max-grid-size', file = sys.stderr)
        print(f'       {sys.argv[0]} stepwise', file = sys.stderr)
        sys.exit(-1)
    if sys.argv[1] == 'htg':
        sys.exit(htg(int(sys.argv[2])))
    elif sys.argv[1] == 'stepwise':
        sys.exit(stepwise())
    else:
        print(f'Error: Unkown command {sys.argv[1]}', file = sys.stderr)
        sys.exit(-1)
