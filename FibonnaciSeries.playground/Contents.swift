import UIKit

/// Program to print Fibonnaci Series

/// Fibonnaci series find
/// - Parameter number: number for interations
/// - Returns: array
private func fibonnaciSeries(number : Int) -> [Int] {
    /// Recursive method
    func recursive(number: Int) -> Int {
        guard number > 1 else {
            return number
        }
        return recursive(number: number - 1) + recursive(number: number - 2)
    }

    var arrayOfSeries = [Int]()
    //loop start from 0 to (number - 1) and store result into array
    for i in 0..<number {
        let recursiveResult = recursive(number: i)
        arrayOfSeries.append(recursiveResult)
    }
    //series array return
    return arrayOfSeries
}

let series = fibonnaciSeries(number: 10)
print(series)
