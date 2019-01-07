//
//  DateHandler.swift
//  Simple Weather App
//
//  Created by Owl on 2017-08-22.
//  Copyright © 2017 Owl. All rights reserved.
//

import Foundation

class DateHandler {
    
    static let stringOffset : Int = 10
    static var todaysDate: String {
        return formatDateString(date: Date())
    }
    static var tomorrowsDate: String {
        guard let tomorrowDate = Calendar.current.date(byAdding: .day, value: 1, to: Date()) else { return "" }
        return formatDateString(date: tomorrowDate)
    }
    
    private static func formatDateString(date: Date) -> String {
        let dateString = String(describing: date)
        let endIndex = dateString.index(dateString.startIndex, offsetBy: self.stringOffset)
        return dateString.substring(to: endIndex)
    }
}
