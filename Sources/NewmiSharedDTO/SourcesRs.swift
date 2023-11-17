//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct SourcesRs{
    public var sources:[Source]?
    
    public init(sources: [Source]? = nil) {
        self.sources = sources
    }
}

public struct Source{
    var id:UUID?
    var name:String?
    var language:String?
    var countryCode:String?
    
    init(id: UUID? = nil, name: String? = nil, language: String? = nil, countryCode: String? = nil) {
        self.id = id
        self.name = name
        self.language = language
        self.countryCode = countryCode
    }
}
