import UIKit

/// Find factorial of given number
/// - Parameter number: number for find factorial
/// - Returns: array of factorials
private func findFactorials(number: Int) -> [Int] {
    var arrayOfFactorials = [Int]()
    for n in 1...number {
        ///If mod is 0 then append into factorial array
        if ((number % n) == 0) {
            arrayOfFactorials.append(n)
        }
    }
    return arrayOfFactorials
}
let arrayOfFactorials = findFactorials(number: 20)
print(arrayOfFactorials)

