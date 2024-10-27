//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 05/12/2023.
//

import Foundation

public struct PnChannelsRs: Codable, Sendable{
    public var channels:[PnChannel]?
    
    public init(channels: [PnChannel]? = nil) {
        self.channels = channels
    }
}

public struct PnChannel: Codable, Hashable, Sendable{
    public static func == (lhs: PnChannel, rhs: PnChannel) -> Bool {
        lhs.id == rhs.id
    }
    
    public var id: UUID?
    public var name: String?
    public var channelCode: String?
    public var isSelected: Bool?
    
    public init(id: UUID? = nil, name: String? = nil, channelCode: String? = nil, isSelected: Bool? = nil) {
        self.id = id
        self.name = name
        self.channelCode = channelCode
        self.isSelected = isSelected
    }
}
