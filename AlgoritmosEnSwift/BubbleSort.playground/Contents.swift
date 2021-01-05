import UIKit

func bubbleSort(array: inout [Int]) -> [Int] {

    var swaps = 0
    while true {

        for i in 0...array.count - 1 {
            let notAtEnd = i != array.count - 1
            guard notAtEnd else {
                if swaps == 0 {
                    return array
                } else {
                    swaps = 0
                }
                continue
            }

            if array[i] > array[i+1]{
                swaps += 1
                let temp = array[i+1]
                array[i+1] = array[i]
                array[i] = temp
            }

        }
    }

    return array
}

var array = [8, 5, 2, 9, 5, 6, 3]
bubbleSort(array: &array)
