//
//  ShortenedURLRq.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 14/12/2024.
//

public struct ShortenedURLRq: Codable, Sendable{
    public var url: String?
    
    public init(url: String? = nil) {
        self.url = url
    }
}
