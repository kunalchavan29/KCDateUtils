//
//  KCDateUtil.swift
//  KCDateUtils
//
//  Created by A118830248 on 07/09/22.
//

import Foundation

public final class KCDateUtils {
    
    public class func getDay(date: Date) -> Int {
        let calendar = Calendar.current
        return calendar.component(.day, from: date)
    }
}

extension Date {
    public func yearsFrom(date: Date) -> Int {
        let calendar: Calendar = Calendar.current
        return calendar.dateComponents([.year], from: date as Date, to: self as Date).year!
    }
    public func monthsFrom(date: Date) -> Int {
        let calendar: Calendar = Calendar.current
        return calendar.dateComponents([.month], from: date as Date, to: self as Date).month!
    }
    public func weeksFrom(date: Date) -> Int {
        let calendar: Calendar = Calendar.current
        return calendar.dateComponents([.weekOfMonth], from: date as Date, to: self as Date).weekOfMonth!
    }
    public func daysFrom(date: Date) -> Int {
        let calendar: Calendar = Calendar.current
        return calendar.dateComponents([.day], from: date as Date, to: self as Date).day!
    }
    public func hoursFrom(date: Date) -> Int {
        let calendar: Calendar = Calendar.current
        return calendar.dateComponents([.hour], from: date as Date, to: self as Date).hour!
    }
    public func minutesFrom(date: Date) -> Int {
        let calendar: Calendar = Calendar.current
        return calendar.dateComponents([.minute], from: date as Date, to: self as Date).minute!
    }
    public func secondsFrom(date: Date) -> Int {
        let calendar: Calendar = Calendar.current
        return calendar.dateComponents([.second], from: date as Date, to: self as Date).second!
    }
    public func offsetFrom(date: Date) -> String {
        if yearsFrom(date: date)   > 0 { return "\(yearsFrom(date: date))y"   }
        if monthsFrom(date: date)  > 0 { return "\(monthsFrom(date: date))M"  }
        if weeksFrom(date: date)   > 0 { return "\(weeksFrom(date: date))w"   }
        if daysFrom(date: date)    > 0 { return "\(daysFrom(date: date))d"    }
        if hoursFrom(date: date)   > 0 { return "\(hoursFrom(date: date))h"   }
        if minutesFrom(date: date) > 0 { return "\(minutesFrom(date: date))m" }
        if secondsFrom(date: date) > 0 { return "\(secondsFrom(date: date))s" }
        return ""
    }
}
