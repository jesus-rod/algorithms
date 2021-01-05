import Foundation

class Program {
    func threeNumberSort(_ array: inout [Int], _ order: [Int]) -> [Int] {
        guard array.count > 0 else { return array }

        var firstIndex = 0

        for (index, number) in array.enumerated() {
            if number == order[0] {
                array.swapAt(index, firstIndex)
                firstIndex += 1
            }
        }

        var lastIdx = array.count - 1
        for (index, number) in array.enumerated().reversed() {
            if number == order[2] {
                array.swapAt(lastIdx, index)
                lastIdx -= 1
            }
        }
        print(array)
        return array
    }
}


var inputArray = [1, 0, 0, -1, -1, 0, 1, 1]
Program().threeNumberSort(&inputArray, [0,1,-1])
