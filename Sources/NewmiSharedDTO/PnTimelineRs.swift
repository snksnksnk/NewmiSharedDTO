//
//  PnTimelineRs.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 15/02/2025.
//

import Foundation

public struct PnTimelineRs: Codable, Sendable{
    
    public var timeLine: [CGFloat]?
    public var status: String?
    
    public init(timeLine: [CGFloat]? = nil, status: String? = nil) {
        self.timeLine = timeLine
        self.status = status
    }
}
