//https://www.hackerrank.com/challenges/drawing-book/
import Foundation

public class DrawingBook {
    public static func pageCount(n: Int, p: Int) -> Int {
        let pageGapFromEnd: Int = n - p
        var result: Int = 0
        if(p > pageGapFromEnd) {
            if((n % 2 == 0) && (p % 2 == 1)){
                result = (pageGapFromEnd / 2) + 1
            } else {
                result = pageGapFromEnd / 2
            }
        } else {
            result = p / 2
        }
        return result
    }
}
