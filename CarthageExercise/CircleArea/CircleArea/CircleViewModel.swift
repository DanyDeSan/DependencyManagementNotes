//
//  CircleViewModel.swift
//  CircleArea
//
//  Created by L Daniel De San Pedro on 05/10/23.
//

import Foundation
import ShapeAreas

class CircleViewModel: ObservableObject {
    
    @Published var resultArea: Double = 0
    
    let calculator = ShapeAreaCalculator()
    
    func caculateArea(radius: CGFloat) {
        resultArea = calculator.circleArea(radius: Double(radius))
    }
}
