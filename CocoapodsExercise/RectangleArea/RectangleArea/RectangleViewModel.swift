//
//  RectangleViewModel.swift
//  RectangleArea
//
//  Created by L Daniel De San Pedro on 09/10/23.
//

import Foundation
import ShapeAreas

final class RectangleViewModel: ObservableObject {
    
    @Published var rectangleArea: Double = 0
    
    var calculator: ShapeAreaCalculator = ShapeAreaCalculator()
    
    
    func calculateRectangleArea(width: CGFloat, height: CGFloat) {
        rectangleArea = calculator.rectangleArea(width: Double(width), height: Double(height))
    }
}
