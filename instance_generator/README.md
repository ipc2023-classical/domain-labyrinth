# PDDL Instance Generator

run:

    ./main.py --size 7

optional parameters:

- `num-rotations`: number of rotations used to scramble the board, default 10
- `seed`: seed for the random generator default 0
- `image-sol`: file where the svg image of the solution should be stored
- `image-init`: file where the svg image of the initial state should be stored
- `pddl`: file where the pddl problem definition should be stored, default _problem.pddl_

  [--num-rotations NUM_SHIFTS] [--seed SEED] [--image-sol IMAGE_SOL] [--image-init IMAGE_INIT] [--pddl PDDL]
