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

fileprivate struct Struct: Equatable {
    let v: Int

    static func ==(lhs: Struct, rhs: Struct) -> Bool {
        return (lhs.v == rhs.v)
    }
}

class ArrayTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRemove() {
        var array = [Struct(v: 1), Struct(v: 2), Struct(v: 3)]
        let removed = array.remove(element: Struct(v: 1))
        XCTAssertEqual(Struct(v: 1), removed)
        XCTAssertEqual([Struct(v: 2), Struct(v: 3)], array)
    }

    func testRemoveWhere() {
        var array = [Struct(v: 1), Struct(v: 2), Struct(v: 3)]
        let removed = array.remove(where: { $0.v == 1} )
        XCTAssertEqual(Struct(v: 1), removed)
        XCTAssertEqual([Struct(v: 2), Struct(v: 3)], array)
    }

    static var allTests = [
        ("testRemove", testRemove),
        ("testRemoveWhere", testRemoveWhere)
    ]
}
