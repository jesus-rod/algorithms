import UIKit

//maximumSubsetSum ( NON ADJACENT )
class Program {

    // Space O(1)  -- Time O(N)
    func maximumSubsetSum(array: [Int]) -> Int {

        var maxSums = [Int]()
        guard !array.isEmpty else { return 0 }

        for index in stride(from: 0, through: array.count - 1, by: 1) {
            if index == 0 {
                maxSums.append(array[0])
            } else if index == 1 {
                maxSums.append(max(array[0], array[1]))
            } else {
                let maxSum = max(maxSums[index-1], maxSums[index-2] + array[index])
                maxSums.append(maxSum)
            }
        }
        return maxSums[array.count-1]
    }
}

Program().maximumSubsetSum(array: [7, 10, 12, 7, 9, 14])


// Space O(1)  -- Time O(1)
class BetterProgram {

    func maximumSubsetSum(array: [Int]) -> Int {
        guard !array.isEmpty else { return 0 }
        guard array.count > 1 else { return array[0] }
        var second = array[0]
        var first = max(second, array[1])

        guard !array.isEmpty else { return 0 }
        for index in stride(from: 2, through: array.count - 1, by: 1) {
            let maxSum = max(first, second + array[index])
            second = first
            first = maxSum
        }
        return first
    }
}

BetterProgram().maximumSubsetSum(array: [7, 10, 12, 7, 9, 14])
