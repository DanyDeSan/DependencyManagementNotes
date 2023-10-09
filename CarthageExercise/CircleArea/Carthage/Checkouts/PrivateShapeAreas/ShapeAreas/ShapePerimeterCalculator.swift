//
//  ShapePerimeterCalculator.swift
//  ShapeAreas
//
//  Created by L Daniel De San Pedro on 05/10/23.
//

import Foundation

/// An struct that contains the methods that calculates the perimeters of the primitive shapes.
public struct ShapePerimeterCalculator {
    
    public init() {
        
    }
    
    /// Calculates the perimeter of a circle with a given radius, by using the formula
    /// ( *2 \* pi \* radius* )
    /// - Parameter radius: Radius of the circle
    /// - Returns: The perimeter of the circle
    public func circlePerimeter(radius: Double) -> Double {
        return 2 * Double.pi * radius
    }
    
    /// Calculates the perimeter with a given side size, by using the formula
    /// ( *4 \* side * )
    /// - Parameter side: Side of the square
    /// - Returns: Perimeter of the square
    public func squarePerimeter(side: Double) -> Double {
        return 4 * side
    }
    
    /// Calculates the perimeter of a triangle with given three sides, by using the formula
    /// ( *side1 + side2 + side3 *)
    /// - Parameters:
    ///   - side1: Side 1 of the triangle
    ///   - side2: Side 2 of the triangle
    ///   - side3: Side 3 of the triangle
    /// - Returns: Side 4 of the triangle
    public func trianglePerimeter(side1: Double, side2: Double, side3: Double) -> Double {
        return side1 + side2 + side3
    }
    
    /// Calculates the perimeter of a rectangle with a given widht and height, by using the formula
    /// ( * 2  \* widht + 2 \* height * )
    /// - Parameters:
    ///   - width: Width of the rectangle
    ///   - height: Height of the rectangle
    /// - Returns: The perimeter of the rectangle
    public func rectanglePerimeter(width: Double, height: Double) -> Double {
        return 2 * width + 2 * height
    }
}
