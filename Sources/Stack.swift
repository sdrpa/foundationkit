/**
 Created by Sinisa Drpa on 8/9/16.

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

import Foundation

public struct Stack<T> {

    private var items: [T]

    public init() {
        self.items = [T]()
    }

    public mutating func push(_ item: T) {
        self.items.append(item)
    }

    public mutating func pop() -> T? {
        if self.items.count == 0 {
            return nil
        }
        return self.items.removeLast()
    }

    public mutating func removeAll() {
        self.items.removeAll(keepingCapacity: false)
    }

    public var top: T? {
        return self.items.last
    }
}
