//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 05/12/2023.
//

import Foundation

public struct PnChannelsRegisterRq: Codable, Sendable{
    public var deviceIdentif: UUID?
    public var pnToken: String?
    public var channels: [String]?
    public var deviceOS: String?
    public var timeLine: [CGFloat]?
    
    public init(deviceIdentif: UUID? = nil, pnToken: String? = nil, channels: [String]? = nil, deviceOS: String? = nil, timeLine: [CGFloat]? = nil) {
        self.deviceIdentif = deviceIdentif
        self.pnToken = pnToken
        self.channels = channels
        self.deviceOS = deviceOS
        self.timeLine = timeLine
    }
}
