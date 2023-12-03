//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct CategoriesRs:Codable{
    public var categories:[Category]?
    
    public init(categories: [Category]? = nil) {
        self.categories = categories
    }
}

public struct Category:Codable{
    public var id:UUID?
    public var name:String?
    public var categoryCode:String?
    public var isSelected:Bool?
    
    public init(id: UUID? = nil, name: String? = nil, categoryCode: String? = nil, isSelected:Bool? = nil) {
        self.id = id
        self.name = name
        self.categoryCode = categoryCode
        self.isSelected = isSelected
    }
}
