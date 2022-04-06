//https://www.hackerrank.com/challenges/sock-merchant/
import Foundation

public class SalesByMatch {
    public static func sockMerchant(n: Int, ar: [Int]) -> Int {
        // Write your code here
        let tupleArray = ar.map { ($0, 1) }
        let elementFrequency = Dictionary(tupleArray, uniquingKeysWith: +)
        var result : Int = 0
        for (key,value) in elementFrequency {
            result += (value / 2)
        }
        return result
    }
}
