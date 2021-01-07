import UIKit

var str = "Hello, playground"
class Program {
    func groupAnagrams(_ words: [String]) -> [[String]] {

        // store sortedWord: [each word ]
        var wordGroups = [String: [String]]()
        for word in words {
            let sortedWord = String(word.sorted())
            if var wordGroup = wordGroups[word] {
                wordGroup.append(sortedWord)
                wordGroups[sortedWord] = wordGroup
            } else {
                wordGroups[sortedWord] = [word]
            }
        }

        print(wordGroups)
        var finalArray = [[String]]()
        for group in wordGroups {
            finalArray.append(group.value)
        }
        return finalArray
    }
}

Program().groupAnagrams(["yo", "act", "flop", "tac", "foo", "cat", "oy", "olfp"])
