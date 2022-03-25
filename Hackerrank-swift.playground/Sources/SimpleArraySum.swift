public class SimpleArraySum {
    public static func simpleArraySum(ar: [Int]) -> Int {
        // Write your code here
        let result = ar.reduce(0, +)
        return result
    }
}
