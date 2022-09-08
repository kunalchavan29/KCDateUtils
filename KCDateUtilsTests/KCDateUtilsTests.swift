//
//  KCDateUtilsTests.swift
//  KCDateUtilsTests
//
//  Created by A118830248 on 07/09/22.
//

import XCTest
@testable import KCDateUtils

class KCDateUtilsTests: XCTestCase {
    
    var utils: KCDateUtils!
    var testDate: Date!
    
    override func setUp() {
        utils = KCDateUtils()
        testDate = getDateFromString(dateString: "2022-01-01T11:42:00")!
    }
    
    private func getDateFromString(dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        return dateFormatter.date(from: dateString)
    }
    
    func testGetDay() {
        XCTAssertEqual(KCDateUtils.getDay(date: testDate), 1)
    }
    
    func testMonthsFrom() {
        XCTAssertEqual(getDateFromString(dateString: "2022-04-01T11:42:00")!.monthsFrom(date: testDate), 3)
    }
}
