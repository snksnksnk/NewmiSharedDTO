//
//  PnEditRq.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 09/02/2025.
//

import Foundation

public struct PnEditRq: Codable, Sendable{
    public var deviceID: UUID?
    public var pnCode: String?
    
    public init(deviceID: UUID? = nil, pnCode: String? = nil) {
        self.deviceID = deviceID
        self.pnCode = pnCode
    }
}
