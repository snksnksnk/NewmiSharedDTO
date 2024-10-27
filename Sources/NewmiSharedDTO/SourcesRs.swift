//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct SourcesRs: Codable, Sendable{
    public var sources: [Source]?
    
    public init(sources: [Source]? = nil) {
        self.sources = sources
    }
}

public enum SourceStatus: String, Codable, Sendable{
    case online = "ONLINE"
    case offline = "OFFLINE"
}

public struct Source: Codable, Hashable, Sendable{
    public static func == (lhs: Source, rhs: Source) -> Bool {
        lhs.id == rhs.id
    }
    
    public var id: UUID?
    public var name: String?
    public var language: String?
    public var countryCode: String?
    public var sourceCode: String?
    public var isSelected: Bool?
    public var lastUpdate: Date?
    public var status: SourceStatus?
    
    public init(id: UUID? = nil, name: String? = nil, language: String? = nil, countryCode: String? = nil, sourceCode: String? = nil, isSelected: Bool? = nil, lastUpdate: Date? = nil, status: SourceStatus? = nil) {
        self.id = id
        self.name = name
        self.language = language
        self.countryCode = countryCode
        self.sourceCode = sourceCode
        self.isSelected = isSelected
        self.lastUpdate = lastUpdate
        self.status = status
    }
}
