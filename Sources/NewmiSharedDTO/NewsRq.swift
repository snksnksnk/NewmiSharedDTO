//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 07/01/2024.
//

import Foundation

public struct NewsRq:Codable{
    public var sources:[String]?
    public var categories:[String]?
    public var newsType:String?
    public var page:Int?
    
    public init(sources: [String]? = nil, categories:[String]? = nil, newsType:String? = nil, page:Int? = nil) {
        self.sources = sources
        self.categories = categories
        self.newsType = newsType
        self.page = page
    }
}
