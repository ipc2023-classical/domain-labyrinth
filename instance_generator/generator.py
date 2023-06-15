import random
import copy
from labyrinth import Labyrinth, Position, Direction

def generate_random_labyrinth(width: int, height: int, seed: int):
    
    random.seed(seed)
    
    labyrinth = Labyrinth(width, height)
    
    # generate random trace
    trace: list[Direction] = []
    pos_sequence: list[Position] = [labyrinth.pos]
    
    tries = 0
    while(not labyrinth.can_leave()):
        tries += 1 
        if tries >= 10000:
            raise Exception('Number of treis exeeded!')
        
        possible_pos = labyrinth.get_reachable_positions()
        
        if len(possible_pos) == 0:
            raise Exception('Generator ran into dead end!')
        
        direction, next_pos = possible_pos[random.randint(0, len(possible_pos) - 1)]
        
        if len(trace) > 0 and \
            (trace[-1] == Direction.NORTH and direction == Direction.SOUTH or \
            trace[-1] == Direction.SOUTH and direction == Direction.NORTH or \
            trace[-1] == Direction.EAST and direction == Direction.WEST or \
            trace[-1] == Direction.WEST and direction == Direction.EAST):
            continue
        
        if next_pos in pos_sequence:
            index = pos_sequence.index(next_pos)

            pos_sequence = pos_sequence[0:index+1]
            trace = trace[0: index]
        else:
            pos_sequence.append(next_pos)    
            trace.append(direction)
            
        labyrinth.pos = next_pos
        
    #reset robor position
    labyrinth.pos = labyrinth.init_pos
        
    # add walss everywhere
    labyrinth.block_all_cards()
        
    # remove walls for the trace
    for i in range(0, len(trace)):
        direction = trace[i]
        current_pos = pos_sequence[i]
        next_pos = pos_sequence[i+1]
            
        if Direction.NORTH == direction:
            labyrinth.add_path(current_pos, Direction.NORTH)
            labyrinth.add_path(next_pos, Direction.SOUTH)
        if Direction.EAST == direction:
            labyrinth.add_path(current_pos, Direction.EAST)
            labyrinth.add_path(next_pos, Direction.WEST)
        if Direction.SOUTH == direction:
            labyrinth.add_path(current_pos, Direction.SOUTH)
            labyrinth.add_path(next_pos, Direction.NORTH)
        if Direction.WEST == direction:
            labyrinth.add_path(current_pos, Direction.WEST)
            labyrinth.add_path(next_pos, Direction.EAST)
            
    # remove additional walls
    for x in range(width):
        for y in range(height):
            pos = Position(x,y)
            
            card = labyrinth.board.get_card(pos)
            shuffeled_directions = list(Direction)
            random.shuffle(shuffeled_directions)
            while True:
                for direction in shuffeled_directions:
                    if 0 == random.randint(0, 3):
                        card.add_path(direction)
                if card.num_walls() <= 2:
                    break
        
            
    return labyrinth, trace, pos_sequence

def mix_up_labyrinth(labyrinth: Labyrinth, num_shifts: int):
    old_labyrinth = copy.deepcopy(labyrinth)
    not_solvable_without_shifts_found = False;
    rotations = []
    prev_direction = None
    prev_index = None
    while len(rotations) < num_shifts:
        direction = list(Direction)[random.randint(0, 3)]
        index = random.randint(1, labyrinth.board.width - 2)
        
        if direction.opposite() == prev_direction and index == prev_index:
            continue
        
        labyrinth.shift_rotate(index,direction)
        
        shortest_pos_sequence = []
        try:
            shortest_pos_sequence = labyrinth.shortest_trace()
        except Exception:
            not_solvable_without_shifts_found = True
            old_labyrinth = copy.deepcopy(labyrinth)
            rotations.append([direction, index])
            prev_direction = direction
            prev_index = index
            continue
        
        labyrinth = copy.deepcopy(old_labyrinth)
    
    if not not_solvable_without_shifts_found:
        raise Exception('Not enough rotations to make labyrith unsolvable without rotattions!')
    
    return old_labyrinth, rotations
        
            
        
            
        
        
        
        
        
        
        
    
    