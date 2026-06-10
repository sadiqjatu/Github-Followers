//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Sadiq Jatu on 02/05/26.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter        = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
