//
//  SourceCookie.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 13/04/2025.
//

public struct SourceCookie: Codable, Sendable{
    public var source: Source?
    public var cookie: String?
    
    public init(source: Source? = nil, cookie: String? = nil) {
        self.source = source
        self.cookie = cookie
    }
}
