//https://www.hackerrank.com/challenges/picking-numbers/
import Foundation

public class PickingNumbers {
    public static func pickingNumbers(a: [Int]) -> Int {
        var firstNum : [Int]
        var secondNum: [Int]
        var bestAnswer: Int = 0
        for i in 1...a.count {
            firstNum = a.filter{$0 == i}
            secondNum = a.filter{$0 == (i+1)}
            let sum = firstNum.count + secondNum.count
            if(sum > bestAnswer){
                bestAnswer = sum
            }
        }
        return bestAnswer
    }
}
