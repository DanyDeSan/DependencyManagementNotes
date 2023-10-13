//
//  RectangleViewModel.swift
//  RectangleArea
//
//  Created by L Daniel De San Pedro on 09/10/23.
//

import Foundation
import ShapeArea

final class RectangleViewModel: ObservableObject {
    
    @Published var rectangleArea: Double = 0
    var calculator = ShapeAreaCalculator()

    func calculateRectangleArea(width: CGFloat, height: CGFloat) {
        rectangleArea = calculator.rectangularArea(width: Double(width), height: Double(height))
    }
}
