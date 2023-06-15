from labyrinth import Labyrinth, Card, Direction, Position

def pos_sequnce_to_directions_trace(pos_sequence) -> list(Direction):
    
    trace = []
    
    for i in range(len(pos_sequence)-1):
        cur_pos = pos_sequence[i]
        next_pos = pos_sequence[i+1]
        
        if cur_pos.x < next_pos.x:
            trace.append(Direction.EAST)
            continue
        if cur_pos.x > next_pos.x:
            trace.append(Direction.WEST)
            continue
        if cur_pos.y < next_pos.y:
            trace.append(Direction.SOUTH)
            continue
        if cur_pos.y > next_pos.y:
            trace.append(Direction.NORTH)
            continue
        
    return trace 
    
class MoveRobotAction:
    
    def __init__(self, direction: Direction, cardFrom: Card, positionFrom: Position, cardTo: Card, positionTo: Position):
        self.direction = direction
        self.cardFrom = cardFrom
        self.positionFrom = positionFrom
        self.cardTo = cardTo
        self.positionTo = positionTo
        
    def __repr__(self) -> str:
        return ' '.join(
            [
                '(move-' +  self.direction.name.lower(),
                'card' + str(self.cardFrom.id),
                'pos' + str(self.positionFrom.y),
                'pos' + str(self.positionFrom.x),
                self.direction.to_single_charater().lower(),
                'card' + str(self.cardTo.id),
                'pos' + str(self.positionTo.y),
                'pos' + str(self.positionTo.x),
                self.direction.opposite().to_single_charater().lower() + ') ;; cost: 1'
            ])
        
class LeaveAction:
    
    def __init__(self, card: Card, position: Position):
        self.card = card
        self.position = position
        
    def __repr__(self) -> str:
        return ' '.join(
            [
                '(leave-',
                'card' + str(self.card.id),
                'pos' + str(self.position.y),
                'pos' + str(self.position.x)  + ') ;; cost: 0'
            ])


class MetaMoveCardAction:
    
    def __init__(self, direction: Direction, index: int):
        self.direction = direction
        self.index = index
        
    def reverse(self):
        return MetaMoveCardAction(self.direction.opposite(), self.index)
        
    def to_individual_actions(self, labyrinth: Labyrinth):
        width = labyrinth.board.width
        height = labyrinth.board.height
        
        actions = []
        
        if self.direction == Direction.NORTH:
            card_holding: Card = labyrinth.board.get_card(Position(self.index,0))
            next_card = labyrinth.board.get_card(Position(self.index,1))
            actions.append(StartMoveCardAction(self.direction, card_holding, Position(self.index,0), next_card, 1))
            
            for i in range(0, height-1):
                move_card = labyrinth.board.get_card(Position(self.index,i+1))
                if i < height-2:
                    next_card = labyrinth.board.get_card(Position(self.index,i+2))
                    actions.append(MoveCardAction(self.direction, move_card, Position(self.index, i+1), next_card, i+2, i))
                labyrinth.board.grid[self.index][i] = labyrinth.board.grid[self.index][i+1]
                
            labyrinth.board.grid[self.index][height-1] = card_holding
            move_card = labyrinth.board.get_card(Position(self.index, height-2))
            actions.append(StopMoveCardAction(self.direction, move_card, Position(self.index, height-1), height - 2, height - 1, card_holding))
            
        elif self.direction == Direction.SOUTH:
            card_holding: Card = labyrinth.board.get_card(Position(self.index,height-1))
            next_card = labyrinth.board.get_card(Position(self.index,height-2))
            actions.append(StartMoveCardAction(self.direction, card_holding, Position(self.index,height-1), next_card, height-2))
            
            for i in range(self.height-1,0,-1):
                move_card = labyrinth.board.get_card(Position(self.index,i-1))
                if i > 0:
                    next_card = labyrinth.board.get_card(Position(self.index,i-2))
                    actions.append(MoveCardAction(self.direction, move_card, Position(self.index, i-1), next_card, i-2, i))
                labyrinth.board.grid[self.index][i] = labyrinth.board.grid[self.index][i-1]
                
            labyrinth.board.grid[self.index][0] = card_holding
            move_card = labyrinth.board.get_card(Position(self.index, 1))
            actions.append(StopMoveCardAction(self.direction, move_card, Position(self.index, 1), 1, 0, card_holding))
        
        elif self.direction == Direction.WEST:
            card_holding: Card = labyrinth.board.get_card(Position(0, self.index))
            next_card = labyrinth.board.get_card(Position(1,self.index,))
            actions.append(StartMoveCardAction(self.direction, card_holding, Position(0,self.index), next_card, 1))
            
            for i in range(0,width-1):
                move_card = labyrinth.board.get_card(Position(i+1,self.index))
                if i < width-2:
                    next_card = labyrinth.board.get_card(Position(i+2,self.index))
                    actions.append(MoveCardAction(self.direction, move_card, Position(i+1,self.index), next_card, i+2, i))
                labyrinth.board.grid[i][self.index] = labyrinth.board.grid[i+1][self.index]
                
            labyrinth.board.grid[width-1][self.index] = card_holding
            move_card = labyrinth.board.get_card(Position(width-2,self.index))
            actions.append(StopMoveCardAction(self.direction, move_card, Position(width-1,self.index), width-2, width-1, card_holding))
            
        elif self.direction == Direction.WEST:
            card_holding: Card = labyrinth.board.get_card(Position(width-1, self.index))
            next_card = labyrinth.board.get_card(Position(width-2,self.index,))
            actions.append(StartMoveCardAction(self.direction, card_holding, Position(width-1,self.index), next_card, width-2))
            
            for i in range(self.width-1,0,-1):
                move_card = labyrinth.board.get_card(Position(self.index,i-1))
                if i > 0:
                    next_card = labyrinth.board.get_card(Position(i-2,self.index))
                    actions.append(MoveCardAction(self.direction, move_card, Position(i-1,self.index), next_card, i-2, i))
                labyrinth.board.grid[i][self.index] = labyrinth.board.grid[i-1][self.index]
                
            labyrinth.board.grid[0][self.index] = card_holding
            move_card = labyrinth.board.get_card(Position(1,self.index))
            actions.append(StopMoveCardAction(self.direction, move_card, Position(1,self.index), 1, 0, card_holding))
        
        return actions
        
        
class StartMoveCardAction:
    
    def __init__(self, direction: Direction, cardMove: Card, position: Position, cardNext: Card, nextRC: int):
        self.direction = direction
        self.cardMove = cardMove
        self.position = position
        self.cardNext = cardNext
        self.nextRC = nextRC
        
    def __repr__(self) -> str:
        row_or_column = 'row' if self.direction == Direction.WEST or self.direction == Direction.EAST else 'column'
        return ' '.join(
            [
                '(start-move-card-' + row_or_column + '-' +  self.direction.name.lower(),
                'card' + str(self.cardMove.id),
                'pos' + str(self.position.y),
                'pos' + str(self.position.x),
                'card' + str(self.cardNext.id),
                'pos' + str(self.nextRC)+ ') ;; cost: 1'
            ])
        
class MoveCardAction:
    
    def __init__(self, direction: Direction, cardMove: Card, position: Position, cardNext: Card, nextRC: int, prevRC: int):
        self.direction = direction
        self.cardMove = cardMove
        self.position = position
        self.cardNext = cardNext
        self.nextRC = nextRC
        self.prevRC = prevRC
        
    def __repr__(self) -> str:
        row_or_column = 'row' if self.direction == Direction.WEST or self.direction == Direction.EAST else 'column'
        return ' '.join(
            [
                '(move-card-' + row_or_column + '-' +  self.direction.name.lower(),
                'card' + str(self.cardMove.id),
                'pos' + str(self.position.y),
                'pos' + str(self.position.x),
                'card' + str(self.cardNext.id),
                'pos' + str(self.nextRC),
                'pos' + str(self.prevRC) + ') ;; cost: 0'
            ])
        
        
class StopMoveCardAction:
    
    def __init__(self, direction: Direction, cardMove: Card, position: Position, prevRC: int, maxmin: int, newheadtail: Card):
        self.direction = direction
        self.cardMove = cardMove
        self.position = position
        self.prevRC = prevRC
        self.maxmin = maxmin
        self.newheadtail = newheadtail
        
    def __repr__(self) -> str:
        row_or_column = 'row' if self.direction == Direction.WEST or self.direction == Direction.EAST else 'column'
        return ' '.join(
            [
                '(stop-move-card-' + row_or_column + '-' +  self.direction.name.lower(),
                'card' + str(self.cardMove.id),
                'pos' + str(self.position.y),
                'pos' + str(self.position.x),
                'pos' + str(self.prevRC),
                'pos' + str(self.maxmin),
                'card' + str(self.newheadtail.id) + ') ;; cost: 0'
            ])
        
        
def to_plan(labyrinth: Labyrinth, pos_sequence, rotations) -> str:
    
    plan = []
    trace = pos_sequnce_to_directions_trace(pos_sequence)
    
    for i in range(len(rotations)-1,-1,-1):
        direction, index = rotations[i]
        metaRotation = MetaMoveCardAction(direction, index)
        metaRotation = metaRotation.reverse()
        plan += metaRotation.to_individual_actions(labyrinth)
        
    end_card = None
    end_pos = None
    for i in range(len(trace)):
        start_pos = pos_sequence[i]
        end_pos = pos_sequence[i+1]
        end_card = labyrinth.board.get_card(end_pos) 
        plan.append(MoveRobotAction(trace[i], labyrinth.board.get_card(start_pos), start_pos,
                                    end_card, end_pos)) 
        
    plan.append(LeaveAction(end_card, end_pos))
    
    return '\n'.join([';; Cost: ' + str(len(trace) + len(rotations)), ';; Cost: ' + str(len(plan))] 
                     + [str(a) for a in plan])