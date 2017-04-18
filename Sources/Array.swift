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

import Foundation

public extension Array where Element: Equatable {

    @discardableResult
    public mutating func remove(element: Element) -> Element? {
        if let index = self.index(of: element) {
            return self.remove(at: index)
        }
        return nil
    }

    @discardableResult
    public mutating func remove(where predicate: (Element) -> Bool) -> Element? {
        if let index = self.index(where: predicate) {
            return self.remove(at: index)
        }
        return nil
    }
}

extension Array {

    public func elements(at indexes: IndexSet) -> [Element] {
        return indexes.filter { $0 < self.count}.map { self[$0] }
    }
}
