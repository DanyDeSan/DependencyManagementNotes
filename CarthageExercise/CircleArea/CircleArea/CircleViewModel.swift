//
//  CircleViewModel.swift
//  CircleArea
//
//  Created by L Daniel De San Pedro on 05/10/23.
//

import Foundation
import ShapeAreas

class CircleViewModel {
    let calculator = ShapeAreaCalculator()
    
    func caculateArea() {
        calculator.circleArea(radius: 2)
    }
}
