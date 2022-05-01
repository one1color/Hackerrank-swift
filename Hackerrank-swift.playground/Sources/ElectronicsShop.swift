// 
import Foundation

public class ElectronicsShop {
    public static func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
        let sortedKeyboards = keyboards.sorted()
        let sortedDrives = drives.sorted()
        var bestValue : Int = 0
        
        for i in sortedKeyboards {
            for j in sortedDrives {
                let tempCount = i + j
                if (tempCount <= b && tempCount > bestValue) {
                    bestValue = tempCount
                }
            }
        }
        if (bestValue == 0){
            bestValue = -1
        }
        return bestValue
    }
}
