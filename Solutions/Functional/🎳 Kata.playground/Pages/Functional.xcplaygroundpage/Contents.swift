import Foundation
/*:
 # 🎳 Kata
 
 * The game consists of 10 frames as shown above. In each frame the player has 2 opportunities to knock down 10 pins. The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares.
 * A spare is when the player knocks down all 10 pins in 2 tries. The bonus for that frame is the number of pins knocked down by the next roll. So in frame 3 above, the score is 10 (the total knocked down) plus a bonus of 5 (the number of pins knocked down on the next roll)
 * A strike is when the player knocks down all 10 pins on their first try. The bonus for that frame is the value of the next 2 balls rolled.
 * In the 10th frame a player who rolls a spare or strike is allowed to roll the extra balls to complete the frame. However no more than 3 balls can be rolled in the 10th frame
 */

func calculateScore(total: Int, remaining pins: [Int], turnCount: Int) -> Int {
    guard let ball1 = pins.first else { return total }
        
    guard let ball2 = pins.dropFirst().first else {
        return calculateScore(total: total + ball1, remaining: Array(pins.suffix(from: 1)), turnCount: turnCount + 1)
    }

    switch (ball1, ball2, turnCount) {
    case (10, _, 0..<9):
    return calculateScore(total: total + Array(pins.prefix(3)).reduce(0,+), remaining: Array(pins.suffix(from: 1)), turnCount: turnCount + 1)
    case (10, _, 10):
        return calculateScore(total: total + Array(pins.prefix(2)).reduce(0,+), remaining: Array(pins), turnCount: turnCount + 1)
    case (0...9, 0...9, 0..<9) where ball1 + ball2 == 10:
        return calculateScore(total: total + Array(pins.prefix(3)).reduce(0,+), remaining: Array(pins.suffix(from: 2)), turnCount: turnCount + 1)
    case (0...9, 0...9, 10) where ball1 + ball2 == 10:
        return calculateScore(total: total + Array(pins.prefix(3)).reduce(0,+), remaining: Array(pins.suffix(from: 2)), turnCount: turnCount + 1)
    default:
        return calculateScore(total: total + Array(pins.prefix(2)).reduce(0,+), remaining: Array(pins.suffix(from: 2)), turnCount: turnCount + 1)
    }
}

func calculateGameScore(frames: [Int]) -> Int {
    return calculateScore(total: 0, remaining: frames, turnCount: 0)
}

//: Test cases

let tests: [(frames: [Int], expected: Int)] =
    [
        ([], 0), 
        ([1, 2], 3),
        ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 20),
        ([2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 2], 26),
        ([5, 5, 6, 2], 24),
        ([5, 5, 5, 5, 5, 5, 5, 5, 5, 1], 66),
        ([10, 6, 3], 28),
        ([10, 10, 10, 10, 1, 1], 95),
        ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8, 2, 5], 33),
        ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 8, 1], 37),
        ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10], 48),
        ([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 150),
        ([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], 300)
]

for (idx, test) in tests.enumerated() {
    let actual = calculateGameScore(frames: test.frames)
    print("\(idx): \(actual == test.expected): expected \(test.expected), got \(actual)")
}
