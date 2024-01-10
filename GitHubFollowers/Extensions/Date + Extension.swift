//
//  Date + Extension.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 2/1/24.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
