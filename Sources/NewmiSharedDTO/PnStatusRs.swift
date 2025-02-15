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
    public var status: PnStatus?
    public var timeline: [Int]?
    
    public init(status: PnStatus? = nil, timeline: [Int]? = nil) {
        self.status = status
        self.timeline = timeline
    }
}
