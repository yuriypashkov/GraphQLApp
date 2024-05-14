//
//  NewsItem.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import Foundation

struct NewsItem: Identifiable, Hashable {
    let id = UUID().uuidString
    let content: String?
    let title: String?
    let publishedAt: String?
    let _description: String?
    let urlToImage: String?
    let url: String?
}
