//
//  TriangleViewModel.swift
//  TriangleArea
//
//  Created by L Daniel De San Pedro on 09/10/23.
//

import Foundation
import ShapeAreas


final class TriangleViewModel: ObservableObject {
    
    @Published var triangleArea: Double = 0.0
    
    var calculator = ShapeAreaCalculator()
    
    func calculateTriangleArea(widht: CGFloat, height: CGFloat) {
        triangleArea = calculator.triangleArea(width: widht, height: height)
    }
}
