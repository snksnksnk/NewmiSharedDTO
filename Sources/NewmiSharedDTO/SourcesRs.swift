//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct SourcesRs:Codable{
    public var sources:[Source]?
    
    public init(sources: [Source]? = nil) {
        self.sources = sources
    }
}

public struct Source:Codable{
    public var id:UUID?
    public var name:String?
    public var language:String?
    public var countryCode:String?
    
    public init(id: UUID? = nil, name: String? = nil, language: String? = nil, countryCode: String? = nil) {
        self.id = id
        self.name = name
        self.language = language
        self.countryCode = countryCode
    }
}
