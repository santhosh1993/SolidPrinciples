//
//  LiskovSubstitution.swift
//  SolidPrinciples
//
//  Created by Santhosh Nampally on 23/04/19.
//  Copyright © 2019 Santhosh Nampally. All rights reserved.
//

import Foundation

// Liskov Substitution Principle: functions that use pointers to base classes must be able to use objects of derived classes without knowing it.

class Shape {
    func area() -> Double {
        return 0
    }
}

class Circle: Shape {
    private var r:Double
    
    init(radius: Double) {
        r = radius
    }
    
    override func area() -> Double {
        return Double.pi * r * r
    }
}

class Square: Shape {
    private var l:Double
    
    init(side:Double) {
        l = side
    }
    
    override func area() -> Double {
        return l * l
    }
}

class Box {
    func shapes() {
        let square = Square(side: 19)
        let circle = Circle(radius: 3)
        
        var shapes:[Shape] = []
        
        shapes.append(square)
        shapes.append(circle)
    }
}

