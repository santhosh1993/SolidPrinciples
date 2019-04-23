//
//  InterfaceSegregation.swift
//  SolidPrinciples
//
//  Created by Santhosh Nampally on 23/04/19.
//  Copyright © 2019 Santhosh Nampally. All rights reserved.
//

import Foundation

// InterfaceSegregation states that clients should not be forced to implement interfaces they don’t use.

protocol ImageProtocol1 {
    var base64Encoded: String { get }
    var jpegData: Data? {get}
    var pngData: Data? {get}
    
    init(data: Data)
    
    init(from url:URL)
    func save(to url: URL)
}

//Instead of one fat interface many small interfaces are preferred based on groups of methods, each one serving one submodule.

protocol ImageProtocol {
    var data: Data { get }
    init(data: Data)
}

protocol Base64Encoding: ImageProtocol {
    var base64Encoded: String { get }
}

protocol ImageEncoding: ImageProtocol {
    var jpegData: Data? {get}
    var pngData: Data? {get}
}

protocol ImagePersistence: ImageProtocol {
    func load(from url: URL) -> Self
    func save(to url: URL)
}
