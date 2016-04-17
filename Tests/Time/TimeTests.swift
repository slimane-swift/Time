//
//  BufferTests.swift
//  Suv
//
//  Created by Yuki Takei on 4/5/16.
//  Copyright © 2016 MikeTOKYO. All rights reserved.
//

#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

import XCTest
@testable import Time

class TimeTests: XCTestCase {
    static var allTests: [(String, TimeTests -> () throws -> Void)] {
        return [
            ("testTimeMethods", testTimeMethods)
        ]
    }

    func testTimeMethods() {
      XCTAssertGreaterThanOrEqual(Time().addSec(1).unixtime - Time().unixtime, 1)

      XCTAssertGreaterThanOrEqual(Time().addMin(1).unixtime - Time().unixtime, 60)

      XCTAssertGreaterThanOrEqual(Time().addHour(1).unixtime - Time().unixtime, 60 * 60)

      XCTAssertGreaterThanOrEqual(Time().addDay(1).unixtime - Time().unixtime, 86400)

      XCTAssertEqual("\(Time(tz: .UTC, unixtime: 585532800))", "Friday, July 22 1988 00:00:00")
    }
}
