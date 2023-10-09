//
//  ShapeAreaCalculator.swift
//  ShapeAreas
//
//  Created by L Daniel De San Pedro on 05/10/23.
//

import Foundation

/// An struct that contains the methods to calculate the areas of the primitive shapes
public struct ShapeAreaCalculator {
    
    public init () {
        
    }
    
    /// Calculates the area of a circle, given its radius. By using the formula 
    /// ( pi \* radius ^ 2 )
    /// - Parameter radius: The radius of the circle
    /// - Returns: The area of the circle
    public func circleArea(radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    /// Calculates the area of a square given the side. By using the formula 
    /// ( side ^ 2 )
    /// - Parameter side: The side of the square
    /// - Returns: The area of the square
    public func squareArea(side: Double) -> Double {
        return side * side
    }
    
    /// Calculates the area of a triangle with a given widht and height, by using the formula
    /// ( width \* height / 2 )
    /// - Parameters:
    ///   - width: Width of the given triangle
    ///   - height: Heifht of the given triangle
    /// - Returns: Area of the triangle
    public func triangleArea(width: Double, height: Double) -> Double {
        return width * height / 2
    }
    
    /// Calculates the area of a rectangle with a given widht and height, by using the formula
    /// ( width \* height )
    /// - Parameters:
    ///   - width: Width of the given rectangle
    ///   - height: Height of the given rectangle
    /// - Returns: Area of the rectangle
    public func rectangleArea(width: Double, height: Double) -> Double {
        return width * height
    }
}
