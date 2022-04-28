//https://www.hackerrank.com/challenges/counting-valleys/
import Foundation


public class CountingValleys{
    public static func countingValleys(steps: Int, path: String) -> Int {
        var isFirst : Bool = false
        var count : Int = 0
        var currentPosition: Int = 0
        for char in path {
            if (char == "U"){
                currentPosition += 1
            } else {
                currentPosition -= 1
            }
                        
            if isFirst == false {
                if (currentPosition < 0) {
                    isFirst = true
                    count += 1
                }
            } else {
                if (currentPosition >= 0) {
                    isFirst = false
                }
            }
        }
        return count
    }
}
