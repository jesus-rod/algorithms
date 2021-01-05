import UIKit

class Program {
  func maximumSubsetSum(array: [Int]) -> Int {

        maxSoFar
        guard !array.isEmpty else { return 0 }

        for index in stride(from: 0, through: array.count - 1, by: 2) {
            print(array[index])
        }

        return 1
  }
}

Program().maximumSubsetSum(array: [75, 105, 120, 75, 90, 135])
