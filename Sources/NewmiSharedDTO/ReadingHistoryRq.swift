//
//  ReadingHistoryRq.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 01/02/2025.
//

import Foundation

public struct ReadingHistoryRq: Codable, Sendable{
    public var articleID: UUID?
    
    public init(articleID: UUID? = nil) {
        self.articleID = articleID
    }
}
