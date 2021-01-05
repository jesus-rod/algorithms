import UIKit

class Program {
    
    // must be at index 0 when array.count is reached
    // we must visit array.count elements
    // if we are back at index 0 before array.count is reached, return false
    func hasSingleCycle(array: [Int]) -> Bool {
        guard array.count > 0 else { return true }
        var currentIndex = 0
        var visitsCounter = 0
        for _ in array {
            if currentIndex == 0 && visitsCounter > 0 {
                return false
            }
            
            let jump = array[currentIndex]
            let nextIndex = (currentIndex + jump) % array.count
            if nextIndex >= 0 {
                currentIndex = nextIndex
            } else {
                print(nextIndex)
                currentIndex = nextIndex + array.count
            }
            visitsCounter += 1
        }
        
        return currentIndex == 0
    }
}


let hasSingleCycle = Program().hasSingleCycle(array: [2, 3, 1, -4, -4, 2])
print(hasSingleCycle)
