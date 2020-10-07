import UIKit

struct CharacterSetCount {
    let vowels,consonants: Int
}


/// Vowels and consonants count calculate
/// - Parameter string: string value
/// - Returns: CharacterSetCount result object
private func countCalculate(string: String) -> CharacterSetCount {
    ///Create vowels and consonats character set
    let vowelsSet = CharacterSet(charactersIn: "aeiou")
    let consonantsSet = CharacterSet.letters.subtracting(vowelsSet)

    ///Counter variable
    var vowelCounter = 0
    var consonantCounter = 0

    string.forEach { char in
        let singleCharSet = CharacterSet(charactersIn: String(char.lowercased()))
        //vowel check if found then increase count
        if singleCharSet.isSubset(of: vowelsSet) {
            vowelCounter += 1
        }
        //consonant check if found then increase count
        if singleCharSet.isSubset(of: consonantsSet) {
            consonantCounter += 1
        }
    }
    let result = CharacterSetCount(vowels: vowelCounter, consonants: consonantCounter)
    return result
}

let calculateString = "My name is Pratik"
let objCalculatedCount = countCalculate(string: calculateString)
print(calculateString)
print("Vowels count -> \(objCalculatedCount.vowels)")
print("Consonants count -> \(objCalculatedCount.consonants)")
