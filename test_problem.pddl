(define (problem test)
(:domain moving-labyrinth)

(:objects
    pos0 pos1 pos2 - gridpos
    card1 card2 card3 card4 card5 card6 card7 card8 card9 - card
)

(:init
    (max-pos pos2)
    (min-pos pos0)
    (next pos1 pos0)
    (next pos2 pos1)
    
    (card-at card1 pos0 pos0)
    (card-at card2 pos0 pos1)
    (card-at card3 pos0 pos2)
    (card-at card4 pos1 pos0)
    (card-at card5 pos1 pos1)
    (card-at card6 pos1 pos2)
    (card-at card7 pos2 pos0)
    (card-at card8 pos2 pos1)
    (card-at card9 pos2 pos2)
    
    
    (blocked card1 N W S W)
    (blocked card1 S W N W)
    (blocked card1 N E S E)
    (blocked card1 S E N E)
    
    (blocked card2 N W S W)
    (blocked card2 S W N W)
    (blocked card2 N E S E)
    (blocked card2 S E N E)
    (blocked card2 S W S E)
    (blocked card2 S E S W)
    
    (blocked card4 N W N E)
    (blocked card4 N E N W)
    (blocked card4 N E S E)
    (blocked card4 S E N E)
    
    
    (blocked card5 N W S W)
    (blocked card5 S W N W)
    (blocked card5 N W N E)
    (blocked card5 N E N W)
    (blocked card5 N E S E)
    (blocked card5 S E N E)
    
    (blocked card6 N W S W)
    (blocked card6 S W N W)
    (blocked card6 N E S E)
    (blocked card6 S E N E)
    
    (robot-at-card card1)
    (robot-at-cell N W)

    (= (total-cost) 0)
    (= (between-cards-cost) 2)
    (= (inside-cards-cost) 1)
    (= (move-card) 1)
)
(:goal
   (and
    (left)
   )
)
(:metric minimize (total-cost))
)


