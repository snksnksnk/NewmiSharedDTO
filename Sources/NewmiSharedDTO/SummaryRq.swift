//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 03/01/2024.
//

import Foundation

public struct SummaryRq:Codable{
    public var articleIds:[String]?
    
    public init(articleIds: [String]? = nil) {
        self.articleIds = articleIds
    }
}
