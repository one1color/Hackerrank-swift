//hackerrank.com/challenges/compare-the-triplets/
import Foundation

public class CompareTheTriplets {
    private static func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        var bobsCount : Int = 0
        var alicesCount : Int = 0
        var finalAnswer : [Int] = []
        for i in 0...(a.count - 1) {
            if a[i] > b[i] {
                bobsCount += 1
            } else if a[i] < b[i] {
                alicesCount += 1
            }
        }
        finalAnswer.append(bobsCount)
        finalAnswer.append(alicesCount)
        return finalAnswer
    }
}
