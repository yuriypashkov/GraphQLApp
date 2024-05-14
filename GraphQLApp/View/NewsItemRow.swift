//
//  NewsItemRow.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import SwiftUI

struct NewsItemRow: View {
    
    @State var item: NewsItem
    
    var body: some View {
        VStack {
            Text(item.title ?? "none value")
                .font(.system(size: 16, weight: .bold))
            Text(item.publishedAt ?? "none value")
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.gray)
        }
    }
}


