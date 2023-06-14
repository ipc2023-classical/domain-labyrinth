#!/usr/bin/env python3

import sys
import argparse

from generator import generate_random_labyrinth, mix_up_labyrinth
from to_pddl import labyrinth_to_pddl

def run(size, num_rotations, seed, image_sol, image_init, pddl_file):
    # generate layrith solvable without shifts
    labyrinth, gen_trace, gen_pos_sequence = generate_random_labyrinth(size, size, seed)

    print('generated plan length: ' + str(len(gen_trace)))
    
    shortest_pos_sequence = labyrinth.shortest_trace()

    print('shortest path length: ' + str(len(shortest_pos_sequence) - 1))
    
    if image_sol:
        svg = labyrinth.to_svg()
        svg = labyrinth.trace_to_svg(svg,gen_pos_sequence, 'blue')
        svg = labyrinth.trace_to_svg(svg,shortest_pos_sequence, 'red')
        svg.save_svg(image_sol)
    
    # add random shifts
    print('#shifts: ' + str(num_rotations))
    labyrinth = mix_up_labyrinth(labyrinth, num_rotations)
    
    print('plan length estimate: ' + str(len(shortest_pos_sequence) - 1 + num_rotations))
    
    if image_init:
        svg = labyrinth.to_svg()
        svg.save_svg(image_init)
    
    if pddl_file:
        pddl = labyrinth_to_pddl(labyrinth, 'size-' + str(size) + '-rotations-' + str(num_rotations) + '-seed-' + str(seed))
        f = open(pddl_file, "w")
        f.write(pddl)
        f.close()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
                    prog='Labyrinth instance generator',
                    description='Generates a solvable instance and a upper bound \
                    on the plan cost')
    
    parser.add_argument('--size', dest='size', type= int, required=True)
    parser.add_argument('--num-rotataions', dest='num_rotations', type=int, default=10)
    parser.add_argument('--seed', dest='seed', type=int, default=0)
    parser.add_argument('--image-sol', dest='image_sol')
    parser.add_argument('--image-init', dest='image_init')
    parser.add_argument('--pddl', dest='pddl', default='problem.pddl')
    
    args = parser.parse_args()
    
    run(args.size, args.num_rotations, args.seed, args.image_sol, args.image_init, args.pddl)