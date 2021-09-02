//
//  Date+Util.swift
//  GCCoreExtension
//
//  Created by quan on 2021/9/2.
//

import Foundation

extension Date {
    var milisecondsSince1970: Int {
        Int(self.timeIntervalSince1970 * 1000)
    }
    
    func isSameDay(_ otherDate: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.component(.year, from: self) == calendar.component(.year, from: otherDate) &&
        calendar.component(.month, from: self) == calendar.component(.month, from: otherDate) &&
        calendar.component(.day, from: self) == calendar.component(.day, from: otherDate)
    }
}
