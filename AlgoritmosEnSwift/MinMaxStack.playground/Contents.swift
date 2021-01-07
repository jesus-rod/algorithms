class Program {

    class MinMaxStack {
        var minMaxStack = [[String: Int]]()

        var stack = [Int]()

        func peek() -> Int? {
            return stack.last
        }

        func pop() -> Int? {
            minMaxStack.popLast()
            return stack.popLast()
        }

        func push(number: Int) {
            var newMinMax = ["min": number, "max": number]

            if let lastMinMax = minMaxStack.last {
                newMinMax["min"] = min(newMinMax["min"]!, lastMinMax["min"]!)
                newMinMax["max"] = max(newMinMax["max"]!, lastMinMax["max"]!)
            }
            minMaxStack.append(newMinMax)
            stack.append(number)
        }

        func getMin() -> Int? {
            return minMaxStack.last?["min"]
        }

        func getMax() -> Int? {
            return minMaxStack.last?["max"]!
        }
    }
}

let testStack = Program.MinMaxStack()
testStack.push(number: 5)
testStack.getMin()
testStack.getMax()
testStack.peek()
testStack.push(number: 7)
testStack.getMin()
testStack.getMax()
testStack.peek()
testStack.push(number: 2)
testStack.getMin()
testStack.getMax()
testStack.peek()
