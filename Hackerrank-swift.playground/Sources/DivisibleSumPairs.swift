//https://www.hackerrank.com/challenges/divisible-sum-pairs
import Foundation

public class DivisibleSumPairs {
    public static func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
        var count :Int = 0
        for i in 0...(n-1){
            for j in i...(n - 1){
                if(i != j){
                    let sum = ar[i] + ar[j]
                    if(sum%k == 0){
                        count+=1
                    }
                }
            }
        }
        return count
    }
}
