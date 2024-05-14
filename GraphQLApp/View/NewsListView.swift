//
//  ContentView.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import SwiftUI

struct NewsListView: View {
    
    @State var model: NewsListModel = NewsListModel()
    
    var body: some View {
        NavigationStack {
            List(model.items, id: \.self) { item in
                NavigationLink {
                    NewsItemView(item: item)
                } label: {
                    NewsItemRow(item: item)
                }
            }
            .onAppear {
                model.loadNews()
            }.navigationTitle("News")
        }
    }
}

#Preview {
    NewsListView()
}
