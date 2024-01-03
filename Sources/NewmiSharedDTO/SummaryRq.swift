//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 03/01/2024.
//

import Foundation

public struct SummaryRq:Codable{
    public var articleIds:[UUID]?
    
    public init(articleIds: [UUID]? = nil) {
        self.articleIds = articleIds
    }
}
