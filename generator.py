#!/usr/bin/env python3

import sys
import random

def main(grid_size, num_blocks, fnpddl, fnplan):
    randnum = random.randint(1, 1000000)
    problem_name = f'labyrinth-{grid_size}-{num_blocks}-{randnum}'
    coords = [f'pos{i}' for i in range(1, grid_size + 1)]
    cards = [f'card{i}' for i in range(1, grid_size * grid_size + 1)]
    next_coord = [f'(next pos{i+1} pos{i})' for i in range(1, grid_size)]

    card_at = []
    idx = 1
    for x in range(1, grid_size + 1):
        for y in range(1, grid_size + 1):
            card_at += [f'(catd-at card{idx} pos{x} pos{y})']
            idx += 1

    blocked = []

    coords = ' '.join(coords)
    cards = ' '.join(cards)
    next_coord = '\n    '.join(next_coord)
    card_at = '\n    '.join(card_at)
    blocked = '\n    '.join(blocked)
    costs = '''
    (= (total-cost) 0)
    (= (between-cards-cost) 2)
    (= (inside-cards-cost) 1)
    (= (move-card) 1)
'''

    s = f'''
(define (problem {problem_name})
(:domain labyrinth)
(:objects
    {coords} - gridpos
    {cards} - card
)

(:init
    (max-pos {coords[-1]})
    (min-pos {coords[0]})
    {next_coord}
    {card_at}
    {blocked}

    (robot-at-card card1)
    (robot-at-cell N W)
    {costs}
)

(:goal
    (and
        (left)
    )
)
(:metric minimize (total-cost))
)
'''
    print(s)
    return 0
    

if __name__ == '__main__':
    if len(sys.argv) != 5:
        print(f'Usage: {sys.argv[0]} grid-size num-blocks prob.pddl prob.plan', file = sys.stderr)
        sys.exit(-1)
    sys.exit(main(int(sys.argv[1]), int(sys.argv[2]), sys.argv[3], sys.argv[4]))
