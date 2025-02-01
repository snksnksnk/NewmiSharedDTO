//
//  BookmarkRs.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 01/02/2025.
//

import Foundation

public enum BookmarkStatus: String, Codable, Sendable {
    case bookmarked
    case notBookmarked = "not_bookmarked"
}

public struct BookmarkRs: Codable, Hashable, Sendable {
    public var status: BookmarkStatus?
    
    public init(status: BookmarkStatus? = nil) {
        self.status = status
    }
}
