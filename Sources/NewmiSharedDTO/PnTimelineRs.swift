//
//  PnTimelineRs.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 15/02/2025.
//

import Foundation

public struct PnTimelineRs: Codable, Sendable{
    public var timeLine: [Int]?
    
    public init(timeLine: [Int]? = nil) {
        self.timeLine = timeLine
    }
}
