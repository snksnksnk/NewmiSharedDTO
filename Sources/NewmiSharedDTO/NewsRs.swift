//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct NewsRs:Codable{
    public var news:[News]?
    
    public init(news: [News]? = nil) {
        self.news = news
    }
}

public struct News:Codable{
    public var title:String?
    public var date:String?
    public var url:String?
    public var source:String?
    public var newsType:String?
    public var categories:String?
    public var imageUrl:String?
    public var videoUrl:String?
    
    public init(title: String? = nil, date: String? = nil, url: String? = nil, source: String? = nil, newsType: String? = nil, categories: String? = nil, imageUrl: String? = nil, videoUrl: String? = nil) {
        self.title = title
        self.date = date
        self.url = url
        self.source = source
        self.newsType = newsType
        self.categories = categories
        self.imageUrl = imageUrl
        self.videoUrl = videoUrl
    }
}
