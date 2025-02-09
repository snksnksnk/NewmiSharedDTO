//
//  PnStatusRs.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 09/02/2025.
//

public enum PnStatus: String, Codable, Sendable {
    case registered
    case notRegistered = "not_registered"
}

public struct PnStatusRs: Codable, Hashable, Sendable {
    public var status: BookmarkStatus?
    
    public init(status: BookmarkStatus? = nil) {
        self.status = status
    }
}
