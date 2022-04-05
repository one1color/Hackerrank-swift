//https://www.hackerrank.com/challenges/migratory-birds/problem
import Foundation

public class MigratoryBirds {
    public static func migratoryBirds(arr: [Int]) -> Int {
        let mappedArr = arr.map{($0, 1)}
        let countsDict = Dictionary(mappedArr, uniquingKeysWith: +)
        var keyResult : Int = 0
        var valueResult: Int = 0
        for (key,value) in countsDict {
            if (valueResult < value){
                keyResult = key
                valueResult = value
                if (valueResult == value && keyResult < key){
                    valueResult = value
                    keyResult = key
                }
            }
        }
        return keyResult
    }
}


