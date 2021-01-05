import UIKit

class Program {
    func searchInSortedMatrix(matrix: [[Int]], target: Int) -> [Int] {

        var rowPointer = 0
        var columnPointer = matrix[0].count - 1

        while rowPointer < matrix.count && columnPointer >= 0 {
            if (matrix[rowPointer][columnPointer] > target) {
                columnPointer -= 1
            } else if matrix[rowPointer][columnPointer] < target {
                rowPointer += 1
            } else {
                return [rowPointer, columnPointer]
            }
        }
        return [-1, -1]
    }

}

Program().searchInSortedMatrix(matrix: [[1, 4, 7, 12, 15, 1000],
                                        [2, 5, 19, 31, 32, 1001],
                                        [3, 8, 24, 33, 35, 1002],
                                        [40, 41, 42, 44, 45, 1003],
                                        [99, 100, 103, 106, 128, 1004]], target: 44)


Program().searchInSortedMatrix(matrix: [[1, 4, 7, 12, 15, 1000],
                                        [2, 5, 19, 31, 32, 1001],
                                        [3, 8, 24, 33, 35, 1002],
                                        [40, 41, 42, 44, 45, 1003],
                                        [99, 100, 103, 106, 128, 1004]], target: 43)
