from board import *

def labyrinth_to_pddl(labyrinth: Labyrinth, id) -> str:
    
    s = "(define (problem " + id + ")\n(:domain moving-labyrinth)\n"
    
    s += "(:objects\n\t"
    
    for i in range(labyrinth.board.width):
        s += 'pos' + str(i) + " "
    s += " - gridpos\n\t"
    
    for i in range(labyrinth.board.width * labyrinth.board.height):
        s += 'card' + str(i)  + " "
    s += " - card\n"
    
    s += ")\n"
    
    s += "(:init\n"
    
    s += "\t(max-pos pos" + str(labyrinth.board.width-1) + ")\n"
    s += "\t(min-pos pos0)\n"
    
    s += "\n"
    
    for i in range(labyrinth.board.width - 1):
        s += "\t(next pos" + str(i+1) + " pos" + str(i) + ")\n"
        
    s += "\n"
    
    for y in range(labyrinth.board.height):
        for x in range(labyrinth.board.width):
            s += "\t(card-at card" + str(labyrinth.board.get_card(Position(x,y)).id) + " pos" + str(y) + " pos" + str(x) + ")\n"

    s += "\n"
    for y in range(labyrinth.board.height):
        for x in range(labyrinth.board.width):
            for direction in list(Direction):
                if not labyrinth.board.get_card(Position(x,y)).can_go(direction):
                    s += "\t(blocked card" + str(labyrinth.board.get_card(Position(x,y)).id) + " " + direction.to_single_charater() + ")\n"
            s += "\n"
    s += "\n"
    s += "\t(robot-at card0)\n\n"

    s += "\t(= (total-cost) 0)\n"
    s += "\t(= (move-robot-cost) 1)\n"
    s += "\t(= (move-card) 1)\n"
    s += ")\n"
    s += "(:goal\n"
    s += "\t(and\n"
    s += "\t\t(left)\n"
    s += "\t)\n"
    s += ")\n"
    s += "\t(:metric minimize (total-cost))\n"
    s += ")\n"
    
    return s