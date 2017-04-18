/**
 Created by Sinisa Drpa on 1/19/17.

 FoundationKit is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or any later version.

 FoundationKit is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with FoundationKit.  If not, see <http://www.gnu.org/licenses/>
 */

import XCTest
@testable import FoundationKit

class DoubleTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNormalize() {
        XCTAssertEqualWithAccuracy(0.3, (3).normalizing(lowerBound: 0.0, upperBound: 10.0), accuracy: 0.01)
    }

    func testRescale() {
        XCTAssertEqualWithAccuracy(50, (250.0).rescaling(min: 200, max: 300, min1: 0, max1: 100), accuracy: 0.01)
    }

    func testWrap() {
        XCTAssertEqualWithAccuracy(10.0, (370.0).wrapping(lowerBound: 0.0, upperBound: 360.0), accuracy: 0.01)
        XCTAssertEqualWithAccuracy(350.0, (-10.0).wrapping(lowerBound: 0.0, upperBound: 360.0), accuracy: 0.01)
        XCTAssertEqualWithAccuracy(0.0, (720.0).wrapping(lowerBound: 0.0, upperBound: 360.0), accuracy: 0.01)

        XCTAssertEqualWithAccuracy(-170, (190).wrapping(lowerBound: -180.0, upperBound: 180.0), accuracy: 0.01)
        XCTAssertEqualWithAccuracy(-170, (190 + 540).truncatingRemainder(dividingBy: 360) - 180, accuracy: 0.01)
    }

    static var allTests = [
        ("testNormalize", testNormalize),
        ("testRescale", testRescale),
        ("testWrap", testWrap)
    ]
}
