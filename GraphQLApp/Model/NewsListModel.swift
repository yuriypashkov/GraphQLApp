//
//  NewsListModel.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import Foundation
import SwiftUI

@Observable class NewsListModel {
    var items: [NewsItem] = []
    
    func loadNews() {
        
    }
    
    func processNews(data: [NewsItem]) {
        items.removeAll()
        items.append(contentsOf: data)
    }
}
