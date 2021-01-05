class Program {
  func sameBSTs(_ arrayOne: [Int], _ arrayTwo: [Int]) -> Bool {
        let areSameLength = arrayOne.count == arrayTwo.count
        guard areSameLength else { return false }
        if arrayOne.isEmpty && arrayTwo.isEmpty {
            return true
        }

        if (arrayOne[0] != arrayTwo[0]) {
            return false
        }

        let lowerArrayOne = findLowerValues(arrayOne[0], arrayOne)
        let lowerArrayTwo = findLowerValues(arrayTwo[0], arrayTwo)
        let higherArrayOne = findHigherValues(arrayOne[0], arrayOne)
        let higherArrayTwo = findHigherValues(arrayTwo[0], arrayTwo)
        return sameBSTs(lowerArrayOne, lowerArrayTwo) && sameBSTs(higherArrayOne, higherArrayTwo)
  }

    func findLowerValues(_ comparingNum: Int, _ array: [Int]) -> [Int] {
        return array.filter { $0 < comparingNum }
    }

    func findHigherValues(_ comparingNum: Int, _ array: [Int]) -> [Int] {
        return array.filter({ (elem) -> Bool in
            elem > comparingNum
        })
    }

}

Program().sameBSTs([10, 15, 8, 12, 94, 81, 5, 2, 11], [10, 8, 5, 15, 2, 12, 11, 94, 81])
