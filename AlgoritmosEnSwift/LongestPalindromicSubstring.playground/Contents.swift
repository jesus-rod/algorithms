import UIKit

class Program {
    // O(nˆ2) time - O(n) space
  func longestPalindromicSubstring(string: String) -> String {
    var currentLongest = [0, 1]

    for i in 1 ..< string.count {
        var oddLeftIndex = i - 1
        var oddRightIndex = i + 1
        let odd = getLongestPalindrome(string: string, leftIndex: &oddLeftIndex, rightIndex: &oddRightIndex)

        var evenLeftIndex = i - 1
        var evenRightIndex = i
        let even = getLongestPalindrome(string: string, leftIndex: &evenLeftIndex, rightIndex: &evenRightIndex)

        print(odd)
        print(even)

        var tempLongest = [Int]()
        if let oddFirst = odd.first, let oddLast = odd.last, let evenFirst = even.first, let evenLast = even.last {
            if oddLast - oddFirst > evenLast - evenFirst {
                tempLongest = odd
            } else {
                tempLongest = even
            }
        }

        if let temporaryFirst = tempLongest.first, let temporaryLast = tempLongest.last, let currentFirst = currentLongest.first, let currentLast = currentLongest.last {
            if temporaryLast - temporaryFirst > currentLast - currentFirst {
                currentLongest = tempLongest
            }
        }
    }

    let firstIndex = string.index(string.startIndex, offsetBy: currentLongest.first!)
    let lastIndex = string.index(string.startIndex, offsetBy: currentLongest.last!)
    let resultString = String(string[firstIndex ..< lastIndex])
    return resultString
  }

    func getLongestPalindrome(string: String, leftIndex: inout Int, rightIndex: inout Int) -> [Int] {
        while leftIndex >= 0 && rightIndex < string.count {
            let leftStringIndex = string.index(string.startIndex, offsetBy: leftIndex)
            let rightStringIndex = string.index(string.startIndex, offsetBy: rightIndex)

            if string[leftStringIndex] != string[rightStringIndex] {
                break
            }

            leftIndex -= 1
            rightIndex += 1

        }

        return [leftIndex + 1, rightIndex]

    }
}

Program().longestPalindromicSubstring(string: "abaxyzzyxf")
