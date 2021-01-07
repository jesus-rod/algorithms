import UIKit

class Program {
  func balancedBrackets(string: String) -> Bool {

    let closingBrackets = ")]}"
    let matchingBrackets: [Character: Character] = [")": "(", "]": "[" ,"}": "{"]

        var stack = [Character]()

        for character in string {

            if character == "(" || character == "[" || character == "{" {
                stack.append(character)
            } else if closingBrackets.contains(character) {
                let topChar = stack.last
                if matchingBrackets[character] != topChar {
                    return false
                } else {
                    stack.popLast()
                }
            }
        }

    return stack.isEmpty
  }

}

Program().balancedBrackets(string: ("([])(){}(())()()"))
Program().balancedBrackets(string: ("()[]{}{"))
