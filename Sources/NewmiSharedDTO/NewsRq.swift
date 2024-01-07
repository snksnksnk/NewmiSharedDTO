//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 07/01/2024.
//

import Foundation

public struct NewsRq:Codable{
    public var sources:[String]?
    public var categories:[String]?
    
    public init(sources: [String]? = nil, categories:[String]? = nil) {
        self.sources = sources
        self.categories = categories
    }
}
