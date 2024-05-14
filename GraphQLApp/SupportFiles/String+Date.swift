//
//  String+Date.swift
//  GraphQLApp
//
//  Created by Yuriy Pashkov on 14.05.2024.
//

import Foundation

extension Date {
    func dateToString(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let locale = Calendar.current.locale
        formatter.locale = locale
        
        return formatter.string(from: self)
    }
}
