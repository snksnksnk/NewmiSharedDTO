//
//  File.swift
//  
//
//  Created by Demetris Georgiou on 17/11/2023.
//

import Foundation

public struct NewsRs: Codable, Sendable, Hashable{
    public var news:[News]?
    public var featured: [News]?

    public init(news: [News]? = nil, featured: [News]? = nil) {
        self.news = news
        self.featured = featured
    }
}

public struct News: Codable, Hashable, Sendable{
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public var id: String?
    public var title: String?
    public var date: String?
    public var dateTime: Date?
    public var url: String?
    public var source: Source?
    public var newsType: String?
    public var categories: Category?
    public var imageUrl: String?
    public var articleText: [String]?
    public var videoUrl: String?
    public var similar: [News]?
    public var media: [String]?
    public var featuredScore: Double?
    public var bookmark: BookmarkStatus?
    
    public init(id: String? = nil, title: String? = nil, date: String? = nil, dateTime:Date? = nil, url: String? = nil, source: Source? = nil, newsType: String? = nil, categories: Category? = nil, imageUrl: String? = nil, articleText: [String]? = nil, videoUrl: String? = nil, similar: [News]? = nil, media: [String]? = nil, featuredScore: Double? = nil, bookmark: BookmarkStatus? = nil) {
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
        self.featuredScore = featuredScore
        self.bookmark = bookmark ?? .notBookmarked
    }
}
