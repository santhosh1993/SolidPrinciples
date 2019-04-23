//
//  OpenClosedPrinciple.swift
//  SolidPrinciples
//
//  Created by Santhosh Nampally on 23/04/19.
//  Copyright © 2019 Santhosh Nampally. All rights reserved.
//

import Foundation

// Open/Closed Principle: Entities should be open for extension but closed for modification

fileprivate class Shape {
    //Shape related functionality
}


// Without editing the Shape class we can achieve a new / modifing a functionality using Inheretance and Extensions
extension Shape: CustomStringConvertible {
    var description: String {
        return "Shape"
    }
}
