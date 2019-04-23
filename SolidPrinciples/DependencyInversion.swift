//
//  DependencyInversion.swift
//  SolidPrinciples
//
//  Created by Santhosh Nampally on 23/04/19.
//  Copyright © 2019 Santhosh Nampally. All rights reserved.
//

import Foundation

/*
 DependencyInversion :
 
 A. High-level modules should not depend on low-level modules. Both should depend on abstractions.
 
 B. Abstractions should not depend on details. Details should depend on abstractions.
 */

//Without Dependency Inversion
class Persistance {
    private let logger = Logger()
    
    func save(data: Data, to url: URL) throws {
        do{
            try data.write(to: url)
        }
        catch {
            logger.log("\(error)", severity: 1)
        }
    }
}

// With Dependency Inversion

class Persistance {
    private let logger:Logging
    
    init(logger: Logging) {
        self.logger = logger
    }
    
    func save(data: Data, to url: URL) throws {
        do{
            try data.write(to: url)
        }
        catch {
            logger.log("\(error)", severity: 1)
        }
    }
}

protocol Logging {
    func log(_ message: String, severity: Int)
}

class Logger: Logging {
    func log(_ message: String, severity: Int) {
        print("\(message), severity: \(severity)")
    }
}
