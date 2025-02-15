//
//  PnStatusRs.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 09/02/2025.
//

import Foundation

public enum PnStatus: String, Codable, Sendable {
    case registered
    case notRegistered = "not_registered"
}

public struct PnStatusRs: Codable, Hashable, Sendable {
    public var status: PnStatus?
    public var timeline: [CGFloat]?
    
    public init(status: PnStatus? = nil, timeline: [CGFloat]? = nil) {
        self.status = status
        self.timeline = timeline
    }
}
