//https://www.hackerrank.com/challenges/the-hurdle-race/
import Foundation

public class TheHurdleRace {
    private static func hurdleRace(k: Int, height: [Int]) -> Int {
        let maxValue = Int(height.max()!)
        if (maxValue > k){
            return (maxValue - k)
        } else {
            return 0
        }
    }
}
