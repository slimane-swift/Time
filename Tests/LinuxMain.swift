#if os(Linux)

import XCTest
@testable import TimeTestSuite

XCTMain([
    testCase(TimeTests.allTests)
])

#endif
