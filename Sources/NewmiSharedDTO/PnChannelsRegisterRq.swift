//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 05/12/2023.
//

import Foundation

import Foundation

public struct PnChannelsRegisterRq:Codable{
    public var deviceIdentifier:String?
    public var channels:[String]?
    public var deviceOS:String?
    
    public init(deviceIdentifier: String? = nil, channels:[String]? = nil, deviceOS:String? = nil) {
        self.deviceIdentifier = deviceIdentifier
        self.channels = channels
        self.deviceOS = deviceOS
    }
}
