from enum import Enum
import drawsvg as draw

class Direction(Enum):
    NORTH = 'NORTH', 
    EAST = 'EAST', 
    SOUTH = 'SOUTH', 
    WEST = 'WEST'
    
    def __repr__(self) -> str:
        return str(self.name)
    
    def to_single_charater(self) -> str:
        return self.name[0]
        
    
    
