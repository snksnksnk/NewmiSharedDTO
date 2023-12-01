//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 22/11/2023.
//

import Foundation

public struct ServiceRq:Codable{
    public var enabled:Bool?
    
    public init(enabled: Bool? = nil) {
        self.enabled = enabled
    }
}
