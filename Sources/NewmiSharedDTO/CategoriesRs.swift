//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct CategoriesRs: Codable, Sendable{
    public var categories:[Category]?
    
    public init(categories: [Category]? = nil) {
        self.categories = categories
    }
}

public struct Category: Codable, Equatable, Sendable{
    
    public var id: UUID?
    public var name: String?
    public var categoryCode: String?
    public var generalCategory: String?
    public var isSelected: Bool?
    
    public init(id: UUID? = nil, name: String? = nil, categoryCode: String? = nil, generalCategory: String? = nil, isSelected: Bool? = nil) {
        self.id = id
        self.name = name
        self.categoryCode = categoryCode
        self.generalCategory = generalCategory
        self.isSelected = isSelected
    }
}
