# 10-Pin Bowling Scorer

### Bowling Scoring Rules

* 10 pins to knock down, worth one point each
* 10 frames, each consisting of up to two attempts
* ‘Strike’ – all 10 pins down on first attempt
    * No second attempt
    * Score for this frame is 10 + pins from next two balls
* ‘Spare’ – all 10 pins knocked down on second attempt
    * Score for this frame is 10 + pins from next ball
* If you get a Strike or Spare on the last frame, you get an additional 1 (spare) or 2 (strike) balls 
    * In the case of a strike (2 extra balls), if on the first extra ball you knock down:
        * < 10 pins, for the last ball you only have the remaining pins to score
        * 10 pins, for the last ball you get 10 pins again

### Examples

Frame 1: [3,5] **8**  
Frame 2: [2,4] **6**  
Score: 14  

Frame 1: [10,-] **13**  
Frame 2: [2,1] **3**  
Score: 16  

Frame 1: [5,5] **16**  
Frame 2: [6,3] **9**  
Score: 25  

Frames: [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [5, 5] 10 **<- extra ball to calculate Frame 10 score**  
Score: 275  

Frames: [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] 8 2 **<- only 2 pins left for last ball**  
Score: 288  

Frames: [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] 10 10 **<- extra 10 pins for final ball**  
Score: 300  

### Program

Write a program which takes a partial or full set of frames and calculates the score.

* Input will always be full frames (+ bonus balls if needed)
* Assume input always valid
* Input will be no more than one game*
* Input format is up to you
* Prepare to accept different inputs during scoring

\* Note functional rules RE infinite sequences
