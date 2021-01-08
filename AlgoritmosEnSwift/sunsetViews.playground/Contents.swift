import UIKit

class Program {
  func sunsetViews(_ buildings: [Int], _ direction: String) -> [Int] {

    var stack = [Int]()
    if direction == "EAST" {
        for (index, height) in buildings.enumerated() {
            appendHeights(stack: &stack, index: index, height: height, buildings)
        }
    } else if direction == "WEST" {
        for (index, height) in buildings.enumerated().reversed() {
            appendHeights(stack: &stack, index: index, height: height, buildings)
        }

        return stack.reversed()
    }

    return stack
  }

    func appendHeights(stack: inout [Int], index: Int, height: Int, _ buildings: [Int]) {
        if stack.isEmpty {
            stack.append(index)
        } else {
            let currentHeight = height
            var lastIndex = stack.last!
            let lastHeight = buildings[lastIndex]

            if lastHeight > currentHeight {
                stack.append(index)
            } else if lastHeight <= currentHeight {
                print("stack -> \(stack)")
                while buildings[lastIndex] <= currentHeight && !stack.isEmpty {
                    print("removing last in \(stack)")
                    stack.popLast()
                    if stack.count > 0 {
                        lastIndex = stack.last!
                    }
                }
                stack.append(index)
            }
        }
    }
}

Program().sunsetViews([3, 5, 4, 4, 3, 1, 3, 2], "EAST")
Program().sunsetViews([3, 5, 4, 4, 3, 1, 3, 2], "WEST")
