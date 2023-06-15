from enum import Enum
import drawsvg as draw
import networkx as nx

class Direction(Enum):
    NORTH = 'NORTH', 
    EAST = 'EAST', 
    SOUTH = 'SOUTH', 
    WEST = 'WEST'
    
    def __repr__(self) -> str:
        return str(self.name)
    
    def opposite(self):
        if self == Direction.NORTH:
            return Direction.SOUTH
        if self == Direction.SOUTH:
            return Direction.NORTH
        if self == Direction.EAST:
            return Direction.WEST
        if self == Direction.WEST:
            return Direction.EAST
    
    def to_single_charater(self) -> str:
        return self.name[0]

class Card:
    
    def __init__(self, id):
        self.id = id
        self.paths = [True,True,True,True]
        
    def num_walls(self) -> int:
        return sum([1 for p in self.paths if not p])
        
    def can_go(self, direction: Direction) -> bool:
        if direction == Direction.NORTH:
            return self.paths[0]
        if direction == Direction.EAST:
            return self.paths[1]
        if direction == Direction.SOUTH:
            return self.paths[2]
        if direction == Direction.WEST:
            return self.paths[3]
    
    def add_path(self, direction: Direction) -> bool:
        if direction == Direction.NORTH:
            self.paths[0] = True
        if direction == Direction.EAST:
            self.paths[1] = True
        if direction == Direction.SOUTH:
            self.paths[2] = True
        if direction == Direction.WEST:
            self.paths[3] = True
            
    def add_wall(self, direction: Direction) -> bool:
        if direction == Direction.NORTH:
            self.paths[0] = False
        if direction == Direction.EAST:
            self.paths[1] = False
        if direction == Direction.SOUTH:
            self.paths[2] = False
        if direction == Direction.WEST:
            self.paths[3] = False

        
class Position:
    
    def __init__(self, x: int, y: int) -> None:
        self.x = x
        self.y = y
        
    def __eq__(self, other: object) -> bool:
        if not isinstance(other, Position):
            return NotImplemented

        return self.x == other.x and self.y == other.y
    
    def __repr__(self) -> str:
        return "(" + str(self.x) + ", " + str(self.y) + ")"
        
class Board:
    
    def __init__(self, width, height):
        self.width = width
        self.height = height
        self.grid: list[list[Card]] = [[Card(x + y * width) for y in range(height)] for x in range(width)]
        
    def add_path(self, pos: Position, dir: Direction) -> None:
        self.grid[pos.x][pos.y].add_path(dir)
        
    def get_card(self, pos: Position):
        return self.grid[pos.x][pos.y]
    
    def block_all_cards(self):
        for x in range(self.width):
            for y in range(self.height):
                self.grid[x][y].paths = [False,False,False,False]
        self.grid[self.width - 1][self.height - 1].paths[2] = True
        
    def rotate(self, index: int, direction: Direction) -> None:
        if direction == Direction.NORTH:
            card_holding: Card = self.grid[index][0]
            for i in range(0,self.height-1):
                self.grid[index][i] = self.grid[index][i+1]
            self.grid[index][self.height-1] = card_holding
            
        elif direction == Direction.SOUTH:
            card_holding: Card = self.grid[index][self.height - 1]
            for i in range(self.height-1,0,-1):
                self.grid[index][i] = self.grid[index][i-1]
            self.grid[index][0] = card_holding
            
        elif direction == Direction.WEST:
            card_holding: Card = self.grid[0][index]
            for i in range(0,self.width-1):
                self.grid[i][index] = self.grid[i+1][index]
            self.grid[self.width-1][index] = card_holding
            
        elif direction == Direction.EAST:
            card_holding: Card = self.grid[self.width - 1][index]
            for i in range(self.width-1,0,-1):
                self.grid[i][index] = self.grid[i-1][index]
            self.grid[0][index] = card_holding
            

class Labyrinth:
    
    def __init__(self, width: int, height: int) -> None:
        self.board = Board(width, height)
        self.init_pos = Position(0,0)
        self.pos = self.init_pos
        self.leave_pos = Position(width - 1, height - 1)
        self.board.grid[width - 1][height - 1].paths[2] = True
        
        self.cs = 20
        self.p = 2
        self.csp = self.cs + self.p
        
    def can_leave(self) -> bool:
        return self.pos == self.leave_pos
    
    def next_position(self, pos: Position) -> None:
        self.pos = pos
    
    def add_path(self, pos: Position, dir: Direction) -> None:
        self.board.add_path(pos, dir)
    
    def shift_rotate(self, index: int, direction: Direction) -> None:
        self.board.rotate(index, direction)
        
    def block_all_cards(self):
        self.board.block_all_cards()
            
    def get_reachable_positions(self, pos=None):
        reachable: list[(Direction, Position)] = []
        
        if not pos:
            pos = self.pos
        
        # WEST
        if pos.x > 0 and \
           self.board.get_card(pos).can_go(Direction.WEST) and \
           self.board.get_card(Position(pos.x - 1, pos.y)).can_go(Direction.EAST):
            reachable.append((Direction.WEST, Position(pos.x - 1, pos.y)))
        #EAST 
        if pos.x < self.board.width - 1 and \
           self.board.get_card(pos).can_go(Direction.EAST) and \
           self.board.get_card(Position(pos.x + 1, pos.y)).can_go(Direction.WEST):
            reachable.append((Direction.EAST, Position(pos.x + 1, pos.y)))
        #NORTH
        if pos.y > 0 and \
           self.board.get_card(pos).can_go(Direction.NORTH) and \
           self.board.get_card(Position(pos.x, pos.y - 1)).can_go(Direction.SOUTH):
            reachable.append((Direction.NORTH, Position(pos.x, pos.y - 1)))
        #SOUTH
        if pos.y < self.board.height-1 and \
           self.board.get_card(pos).can_go(Direction.SOUTH) and \
           self.board.get_card(Position(pos.x, pos.y + 1)).can_go(Direction.NORTH):
            reachable.append((Direction.SOUTH, Position(pos.x, pos.y + 1)))
        
        return reachable
    
    def shortest_trace(self):
        
        G = nx.Graph()
        
        for x in range(self.board.width):
            for y in range(self.board.height):
                G.add_node(x + y * self.board.width)
                
        for x in range(self.board.width):
            for y in range(self.board.height):
                reachable = self.get_reachable_positions(pos=Position(x,y))
                for _, pos in reachable:
                    G.add_edge(x + y * self.board.width, pos.x + pos.y * self.board.width)

        target = (self.board.width * self.board.height) - 1
        id_sequnce = nx.shortest_path(G, source=0, target=target)
        
        pos_sequnce = [Position(i - (int(i / self.board.width) * self.board.width), int(i / self.board.width)) for i in id_sequnce]
        
        return pos_sequnce
        
    
    def to_svg(self) -> any:
        
        
        d = draw.Drawing(self.board.width * self.csp + self.p, self.board.height* self.csp + self.p, origin=(0, 0))
        d.append(draw.Rectangle(0, 0, self.board.width * self.csp + self.p, self.board.height* self.csp + self.p, fill='white'))
        
        d.set_pixel_scale(2)  # Set number of pixels per geometry unit
        
        for x in range(self.board.width):
            for y in range(self.board.height):
                
                d.append(draw.Rectangle(self.p + x * self.csp, self.p + y * self.csp, self.cs, self.cs, fill='black', stroke='none'))
                d.append(draw.Rectangle(self.p + x * self.csp + self.cs/3, 
                                        self.p + y * self.csp + self.cs/3, 
                                        self.cs/3, self.cs/3, 
                                        fill='gray', stroke='none'))
                # walls
                card = self.board.grid[x][y]
                if card.can_go(Direction.NORTH):
                    d.append(draw.Rectangle(self.p + x * self.csp + self.cs/3, 
                                            self.p + y * self.csp, 
                                            self.cs/3, self.cs/3, 
                                            fill='gray', stroke='none'))
                    
                if card.can_go(Direction.EAST):
                    d.append(draw.Rectangle(self.p + x * self.csp + 2/3 * self.cs, 
                                            self.p + y * self.csp + self.cs/3, 
                                            self.cs/3, self.cs/3, 
                                            fill='gray', stroke='none'))
                    
                if card.can_go(Direction.SOUTH):
                    d.append(draw.Rectangle(self.p + x * self.csp + 1/3 * self.cs, 
                                            self.p + y * self.csp + 2/3 * self.cs, 
                                            self.cs/3, self.cs/3, 
                                            fill='gray', stroke='none'))
                    
                if card.can_go(Direction.WEST):
                    d.append(draw.Rectangle(self.p + x * self.csp, 
                                            self.p + y * self.csp + 1/3 * self.cs, 
                                            self.cs/3, self.cs/3, 
                                            fill='gray', stroke='none'))
                
                d.append(draw.Text(str(card.id), 4, 
                                   x=self.p/2 + 5/6 * self.cs + self.csp * x, 
                                   y=self.p/2 + self.cs + self.csp * y,
                                   fill='white', stroke='white', stroke_width=0.25))

            #pos of rover
            d.append(draw.Circle(self.p/2 + self.csp/2 + self.csp * self.pos.x, 
                                 self.p/2 + self.csp/2 + self.csp * self.pos.y, self.csp/8, fill='blue'))
            # goal position
            d.append(draw.Rectangle(self.p + self.leave_pos.x * self.csp + 1/3 * self.cs, 
                                    self.p + self.leave_pos.y * self.csp + 2/3 * self.cs, 
                                    self.cs/3, self.cs/3, 
                                    fill='yellow', stroke='none'))
                

        return d

    def trace_to_svg(self, svg, pos_sequence, color):
        for i in range(0, len(pos_sequence)-1):
            
            cur_pos = pos_sequence[i]
            next_pos = pos_sequence[i+1]
            
            off_x = self.csp/2 + self.p/2
            off_y = self.csp/2 + self.p/2
            
            svg.append(draw.Line(off_x + cur_pos.x * self.csp, off_y + cur_pos.y * self.csp, 
                                off_x + next_pos.x * self.csp, off_y + next_pos.y * self.csp, stroke=color))

        
        return svg
            
    