/// Program to calculate count of vowels & consonants in string
func countVowelsAndConsonants(input: String) -> (Int, Int) {
    let string = String(input.unicodeScalars.filter(CharacterSet.letters.contains)) /// Hellothisisasentence
            
    var vowelsCount = 0
    var consonantsCount = 0
            
    for letter in string {
        if "aeiou".contains(letter) { /// check if letter is a vowel
            vowelsCount += 1
        } else {
            consonantsCount += 1
        }
    }
            
    return (vowelsCount, consonantsCount)
}
        
let string = "Hello, this is a sentence!"
let (vowelsCount, consonantsCount) = countVowelsAndConsonants(input: string)
print("Vowels Count: \(vowelsCount), Consonants Count: \(consonantsCount)")
