//
//  PnStatus.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 09/02/2025.
//

import Foundation

public struct PnStatusRq: Codable, Sendable{
    public var deviceID: UUID?
    
    public init(deviceID: UUID? = nil) {
        self.deviceID = deviceID
    }
}
