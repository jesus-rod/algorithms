import UIKit

var str = "Hello, playground"
class Program {
  func firstDuplicateValue(_ array: inout [Int]) -> Int {
        var duplicateTracker = [Int: Int]()

        for number in array {
            if duplicateTracker.keys.contains(number) {
                duplicateTracker[number]! += 1
            } else {
                duplicateTracker[number] = 1
            }
        }

        var highestNumber: Int?
        for number in array {
            let comparisonNumber = highestNumber ?? 0
            if duplicateTracker[number] >= 2 && duplicateTracker[number] > comparisonNumber {
                highestNumber = duplicateTracker[number]
            }
        }

        return highestNumber ?? -1
  }
}
