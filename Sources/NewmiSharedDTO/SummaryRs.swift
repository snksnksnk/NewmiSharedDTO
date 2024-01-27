//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 27/01/2024.
//

import Foundation

public struct SummaryRs:Codable{
    public var summary:[String]?
    
    public init(summary: [String]? = nil) {
        self.summary = summary
    }
}
