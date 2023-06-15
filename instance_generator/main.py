#!/usr/bin/env python3

import sys
import argparse
import copy

from generator import generate_random_labyrinth, mix_up_labyrinth
from to_pddl import labyrinth_to_pddl
from plan import to_plan

def run(size, num_rotations, seed, image_sol, image_init, plan_file, pddl_file):
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
    rotations = []
    if num_rotations > 0:
        labyrinth, rotations = mix_up_labyrinth(labyrinth, num_rotations)
        print('#rotations: ' + str(len(rotations)))
    
    print('plan length estimate: ' + str(len(shortest_pos_sequence) - 1 + len(rotations)))
    
    if plan_file:
        copy_labyrinth = copy.deepcopy(labyrinth)
        plan = to_plan(copy_labyrinth, shortest_pos_sequence, rotations)
        f = open(plan_file, "w")
        f.write(plan)
        f.close()
    
    if image_init:
        svg = labyrinth.to_svg()
        svg.save_svg(image_init)
    
    if pddl_file:
        name = f'labyrinth-size-{size}-rotations-{num_rotations}-seed-{seed}'
        pddl = labyrinth_to_pddl(labyrinth, name)
        f = open(pddl_file, "w")
        f.write(pddl)
        f.close()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
                    prog=sys.argv[0],
                    description='Labyrinth instance generator: Generates a' \
                    ' solvable instance and a upper bound on the plan cost')
    
    parser.add_argument('--size', dest='size', type= int, required=True,
                        help='Size of the board')
    parser.add_argument('--num-rotations', dest='num_rotations', type=int,
                        required=True,
                        help='number of rotations used to scramble the board')
    parser.add_argument('--seed', dest='seed', type=int, default=0,
                        help='seed for the random generator. default 0')
    parser.add_argument('--image-sol', dest='image_sol',
                        help='file where the svg image of the solution should be stored')
    parser.add_argument('--image-init', dest='image_init',
                        help='file where the svg image of the initial state should be stored')
    parser.add_argument('--plan', dest='plan',
                        help='file where the pan should be stored')
    parser.add_argument('--pddl', dest='pddl', required = True,
                        help='file where the pddl problem definition will be stored')
    
    args = parser.parse_args()
    
    run(args.size, args.num_rotations, args.seed, args.image_sol, args.image_init, args.plan, args.pddl)
