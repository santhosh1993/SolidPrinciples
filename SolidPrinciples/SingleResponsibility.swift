//
//  SingleResponsibility.swift
//  SolidPrinciples
//
//  Created by Santhosh Nampally on 23/04/19.
//  Copyright © 2019 Santhosh Nampally. All rights reserved.
//

import Foundation

/***
 Single Responsibility Principle: A class should have only one reason to change.
 ***/

// Without using Single Responsibility principle
class CurrencyManager {
    func fetchRates(for sourceCurrency: String,
                    to targetCurrency: String,
                    completion: (Error?, Double) -> Void) {
        // logic of fetch rates
    }
    
    func save(rate: Double,
              for sourceCurrency: String,
              to targetCurrency: String) {
        // save logic
    }
    
    func convert(amount: Double,
                 from sourceCurrency: String,
                 to targetCurrency: String) -> Double {
        // convertion logic
        
        return 0
    }
}

// Using Single Responsibility principle

class CurrencyConverter {
    func convert(amount: Double,
                 from sourceCurrency: String,
                 to targetCurrency: String) -> Double {
        // convertion logic
        
        return 0
    }
}

class NetworkController {
    func fetchRates(for sourceCurrency: String,
                    to targetCurrency: String,
                    completion: (Error?, Double) -> Void) {
        // logic of fetch rates
    }
}

class LocalPersistence {
    func save<T>(value: T,for Key: String){
        // save logic
    }
}
