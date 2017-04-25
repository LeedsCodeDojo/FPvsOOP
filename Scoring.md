# Scoring the Solutions

### Process

* Swap with a pair in the other group
* Give a mark for each successful test case passed
* Deduct a mark for each case of a broken rule
    * Any uncertainly, ask a Judge
* Scores will be aggregated

### Test Cases

1. Simple balls

    [1,2] -> 3

2. Lots of simple balls

    [2,3] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [3,2] -> 26

3. Spare

    [5,5] [6,2] -> 24

4. Lots of Spares

    [5,5] [5,5] [5,5] [5,5] [5,1] -> 66

5. Strike

    [10,-] [6,3] -> 28

6. Lots of Strikes

    [10,-] [10,-] [10,-] [10,-] [1, 1] -> 95

7. Spare at end of game

    [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [8,2] 5 ->  33
    
8. Strike at end of game

    [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [10,-] 8 1 ->  37

9. Super-Strike at end of game

    [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [1,1] [10,-] 10 10 ->  48
 
10. Perfect game

    [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] [10,-] 10 10 -> 300
