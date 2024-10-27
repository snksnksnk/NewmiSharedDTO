//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct NewsRs: Codable, Sendable{
    public var news:[News]?
    
    public init(news: [News]? = nil) {
        self.news = news
    }
}

public struct News: Codable, Sendable{
    public var id: String?
    public var title: String?
    public var date: String?
    public var dateTime: Date?
    public var url: String?
    public var source: Source?
    public var newsType: String?
    public var categories: String?
    public var imageUrl: String?
    public var articleText: [String]?
    public var videoUrl: String?
    public var similar: [News]?
    public var media: [String]?
    
    public init(id: String? = nil, title: String? = nil, date: String? = nil, dateTime:Date? = nil, url: String? = nil, source: Source? = nil, newsType: String? = nil, categories: String? = nil, imageUrl: String? = nil, articleText: [String]? = nil, videoUrl: String? = nil, similar: [News]? = nil, media: [String]? = nil) {
        self.id = id
        self.title = title
        self.date = date
        self.dateTime = dateTime
        self.url = url
        self.source = source
        self.newsType = newsType
        self.categories = categories
        self.imageUrl = imageUrl
        self.articleText = articleText
        self.videoUrl = videoUrl
        self.similar = similar
        self.media = media
    }
}
