//URL: https://www.hackerrank.com/challenges/the-birthday-bar

public class SubarrayDivision{
    public static func birthday(s: [Int], d: Int, m: Int) -> Int {
        let chunks = stride(from: 0, to: s.count, by: 1).map {
            Array(s[($0)..<min(m + $0, s.count)])
        }
        //print(chunks)
        var sumResult = chunks.map { $0.reduce(0, {$0 + $1}) }
        //print(summ)
        return sumResult.filter {$0 == d}.count
    }
    
}

