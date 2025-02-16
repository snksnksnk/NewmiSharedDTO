//
//  PnTimelineRq.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 16/02/2025.
//

import Foundation

public struct PnTimelineRq: Codable, Sendable{
    
    public var deviceId: UUID?
    public var timeLine: [CGFloat]?
    public var status: String?
    
    public init(deviceId: UUID? = nil, timeLine: [CGFloat]? = nil, status: String? = nil) {
        self.deviceId = deviceId
        self.timeLine = timeLine
        self.status = status
    }
}
