import UIKit

class Program {
  func validIPAddresses(_ string: String) -> [String] {
    let indexedString = Array(string)
    var ipsList = [String]()
    print(type(of: indexedString))
    for i in 1 ..< min(string.count, 4) {
        var currentParts: [[Character]] = [[], [], [], []]

        currentParts[0] = Array(indexedString[..<i])
        print(indexedString[..<i])
        if !isValidPart(currentParts[0]) {
            continue
        }

        for j in i + 1 ..< i + min(string.count - i, 4) {
            currentParts[1] = Array(indexedString[i..<j])
            print("part 2", indexedString[i..<j])
            if !isValidPart(currentParts[1]) {
                continue
            }

            for k in j + 1 ..< j + min(string.count - j, 4) {
                currentParts[2] = Array(indexedString[j ..< k])
                currentParts[3] = Array(indexedString[k...])
                print("part 3", indexedString[j ..< k])
                print("part 4", indexedString[k...])

                if isValidPart(currentParts[2]), isValidPart(currentParts[3]) {
                    ipsList.append(joinParts(currentParts))
                }
            }
        }
    }
    return ipsList
  }


    func isValidPart(_ string: [Character]) -> Bool {
        let i = Int(String(string)) ?? Int.max
        if i > 255 {
            return false
        }
        return string.count == String(i).count
    }

    func joinParts(_ parts: [[Character]]) -> String {
        var segments = [String]()
        for segment in parts {
            segments.append(String(segment))
        }
        return segments.joined(separator: ".")
    }
}

Program().validIPAddresses("1921680")
