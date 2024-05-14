//
//  Network.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    private(set) lazy var apolloClient = ApolloClient(url: URL(string: "http://localhost:4000")!)
}
