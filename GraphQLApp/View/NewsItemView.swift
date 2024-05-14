//
//  NewsItemView.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import SwiftUI

struct NewsItemView: View {
    
    @State var item: NewsItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: URL(string: item.urlToImage ?? "")) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(width: 128, height: 128, alignment: .center)
                .clipShape(.rect(cornerRadius: 24))
                
                Text(item.title ?? "")
                
                Text(item.publishedAt ?? "")
                
                Text(item.content ?? "")
                
                Button(action: {
                    if let url = URL(string: item.url ?? "") {
                        UIApplication.shared.open(url)
                    }
                }, label: {
                    Text("Show more..")
                })
                
                Spacer()
            }
        }
    }
}

//#Preview {
//    NewsItemView()
//}
