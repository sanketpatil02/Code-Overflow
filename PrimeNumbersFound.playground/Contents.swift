import UIKit

private func foundPrimeNumbers(numbers: [Int]) -> [Int] {
    func isPrime(number: Int) -> Bool {
        /// 0 and 1 are not prime/composite numbers
        guard number > 1 else {
            return false
        }
        let max = Int(floor(sqrt(Double(number))))
        guard max >= 2 else { return true }
        
        for factor in 2...max {
            if number.isMultiple(of: factor) {
                return false
            }
        }
        return true
    }
    let result = numbers.filter({isPrime(number: $0)})
    return result
}

let arrayOfNumbers = [1,2,3,4,5,6,7,8,11]
let primeNumbers = foundPrimeNumbers(numbers: arrayOfNumbers)
print(primeNumbers)
