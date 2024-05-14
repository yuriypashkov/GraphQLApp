//
//  NewsItem+Article.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import Foundation
import API
import Apollo

extension NewsItem {
    static func createItems(articles: GetArticlesQuery.Data) -> [NewsItem] {
        var newsItems: [NewsItem] = []
        guard let list = articles.articles else { return [] }
        for item in list {
            if let item {
                let newsItem = NewsItem(content: item.content, title: item.title, publishedAt: item.publishedAt, _description: "", urlToImage: item.urlToImage, url: item.url)
                newsItems.append(newsItem)
            }
        }
        
        return newsItems
    }
}
