import UIKit
/*
 Equilateral Triangle: A triangle is said to be equilateral triangle if all the sides are equal. If X, Y, Z are three sides of the triangle. Then, the triangle is equilateral only if X = Y = Z.

 Isosceles Triangle: A triangle is said to be an isosceles triangle if any of its two sides are equal. If X, Y, Z are three sides of the triangle.Then, the triangle is isosceles if either X = Y or X = Z or Y = Z.

 Scalene Triangle: A triangle is said Scalene Triangle if none of its sides is equal.
 Reference : "https://www.geeksforgeeks.org/program-to-check-whether-a-triangle-is-equilateral-isosceles-or-scalene/"
 */

private enum TriangleSide {
    case Equilateral, Isosceles, Scalene
    var description : String {
        switch self {
        case .Equilateral:
            return "Equilateral Triangle"
        case .Isosceles:
            return "Isoceles Triangle"
        case .Scalene:
            return "Scalene Triangle"
        }
    }
}

/// Check triangle side
/// - Parameters:
///   - x: x value
///   - y: y value
///   - z: z value
/// - Returns: triangle side
private func checkTriangle(x: Int, y: Int, z: Int) -> TriangleSide {
    if ((x == y) && (y == z)) {
        return TriangleSide.Equilateral
    } else if ((x == y) || (y == z) || (z == x)) {
        return TriangleSide.Isosceles
    } else {
        return TriangleSide.Scalene
    }
}

private let triangle = checkTriangle(x: 2, y: 3, z: 5)
print(triangle.description)


