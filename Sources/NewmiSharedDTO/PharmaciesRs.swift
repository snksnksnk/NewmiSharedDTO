//
//  PharmaciesRs.swift
//  NewmiSharedDTO
//
//  Created by Demetris Georgiou on 17/11/2024.
//

import Foundation

public struct PharmaciesRs: Codable, Sendable{
    public var pharmacies:[Pharmacy]?
    
    public init(pharmacies: [Pharmacy]? = nil) {
        self.pharmacies = pharmacies
    }
}

public struct Pharmacy: Codable, Hashable, Identifiable, Sendable{
    public static func == (lhs: Pharmacy, rhs: Pharmacy) -> Bool {
        lhs.id == rhs.id
    }
    
    public var id: UUID?
    public var category: String?
    public var name: String?
    public var address: String?
    public var phoneOffice: String?
    public var phoneHome: String?
    public var email: String?
    public var address2: String?
    public var postCode: String?
    public var city: String?
    public var generalCity: String?
    public var distance: Double?

    
    public init(id: UUID? = nil, category: String? = nil, name: String? = nil, address: String? = nil, phoneOffice: String? = nil, phoneHome: String? = nil, email: String? = nil, address2: String? = nil, postCode: String? = nil, city: String? = nil, generalCity: String? = nil, distance: Double? = nil) {
        self.id = id
        self.category = category
        self.name = name
        self.address = address
        self.phoneOffice = phoneOffice
        self.phoneHome = phoneHome
        self.email = email
        self.address2 = address2
        self.postCode = postCode
        self.city = city
        self.generalCity = generalCity
        self.distance = distance
    }
}
