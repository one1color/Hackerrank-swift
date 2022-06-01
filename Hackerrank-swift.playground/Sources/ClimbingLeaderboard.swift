//https://www.hackerrank.com/challenges/climbing-the-leaderboard/
import Foundation

public class ClimbingLeaderboard {
    private static func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
        let uniqueRanked = Array(Set(ranked))
        let sortedUniqueRanked = uniqueRanked.sorted{ $0 > $1 }
        var finalOutput : [Int] = []
        var rankingCount = sortedUniqueRanked.count
        
        for i in player {
            while rankingCount > 0 && i >= sortedUniqueRanked[rankingCount - 1] {
                rankingCount -= 1
            }
            finalOutput.append(rankingCount + 1)
        }
        return finalOutput
    }
}
