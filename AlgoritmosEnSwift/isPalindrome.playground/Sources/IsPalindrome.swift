import Foundation

public class Algorithms {

    public init() {}

    public func isPalindrome(string: String) -> Bool {
        // Two pointer method
            var leftOffset = 0
            var rightOffset = string.count - 1
            var startIndex = string.index(string.startIndex, offsetBy: leftOffset)
            var endIndex = string.index(string.startIndex, offsetBy: rightOffset)

            while (leftOffset < rightOffset) {
                let characterToLeft = string[startIndex]
                let characterToRight = string[endIndex]
                if characterToLeft == characterToRight {
                    leftOffset += 1
                    rightOffset -= 1
                    startIndex = string.index(string.startIndex, offsetBy: leftOffset)
                    endIndex = string.index(string.startIndex, offsetBy: rightOffset)
                } else {
                    return false
                }

            }

        return true
      }
}

