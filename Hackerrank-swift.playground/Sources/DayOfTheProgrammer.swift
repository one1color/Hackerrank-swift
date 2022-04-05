//https://www.hackerrank.com/challenges/day-of-the-programmer/
import Foundation

public class DayOfTheProgrammer {
    public static func dayOfProgrammer(year: Int) -> String {
        //calculation of eight month
        var dc = 243
        if (year % 4 == 0 && year < 1919)
          || (year % 4 == 0 && year % 100 != 0)
          || (year % 400 == 0) {
            dc += 1
        }

        if year == 1918 {
            dc -= 13
        }
        return "\(256 - dc).09.\(year)"
    }
}
