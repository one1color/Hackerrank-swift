//https://www.hackerrank.com/challenges/bon-appetit/
import Foundation

public class BillDivision {
    public static func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
        // Write your code here
        var finalBill = bill
        finalBill.remove(at: k)
        let idealBill = finalBill.reduce(0, +) / 2
        if(idealBill == b){
            print("Bon Appetit")
        } else {
            print("\(b - idealBill)")
        }
    }
}
