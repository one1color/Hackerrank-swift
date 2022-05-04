//https://www.hackerrank.com/challenges/cats-and-a-mouse/
import Foundation

public class CatsAndMouse {
    public static func catAndMouse(x: Int, y: Int, z: Int) -> String {
        let catAtoMouse = abs(z - x)
        let catBtoMouse = abs(z - y)
        
        if (catAtoMouse == catBtoMouse){
            return "Mouse C"
        } else if (catAtoMouse < catBtoMouse) {
            return "Cat A"
        } else {
            return "Cat B"
        }
    }
}
