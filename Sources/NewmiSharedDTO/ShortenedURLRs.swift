//
//  ShortenedURLRs.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 14/12/2024.
//

public struct ShortenedURLRs: Codable, Sendable{
    public var shortenedURL: String?
    
    public init(shortenedURL: String? = nil) {
        self.shortenedURL = shortenedURL
    }
}
