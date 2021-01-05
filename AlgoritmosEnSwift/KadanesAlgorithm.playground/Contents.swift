import Foundation

class Program {
  func kadanesAlgorithm(array: [Int]) -> Int {

    var maxSoFar = Int.min

    var maxUntilHere = 0
    for number in array {
        maxUntilHere = max(maxUntilHere + number, number)
        if maxUntilHere > maxSoFar {
            maxSoFar = maxUntilHere
        }
    }
    return maxSoFar
  }
}


Program().kadanesAlgorithm(array: [3, 5, -9, 1, 3, -2, 3, 4, 7, 2, -9, 6, 3, 1, -5, 4])
