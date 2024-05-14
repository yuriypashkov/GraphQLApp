//
//  NewsListModel.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import Foundation
import SwiftUI
import Apollo
import API

@Observable class NewsListModel {
    var items: [NewsItem] = []
    
    func loadNews() {
        Network.shared.apolloClient.fetch(query: GetArticlesQuery()) { [weak self] result in
            
            guard let self else { return }
            
            switch result {
            case .success(let data):
                if let data = data.data {
                    self.items = NewsItem.createItems(articles: data)
                } else {
                    print("Data error")
                }
            case .failure(_):
                print("Query error")
            }
        }
    }
    
    func processNews(data: [NewsItem]) {
        items.removeAll()
        items.append(contentsOf: data)
    }
}
