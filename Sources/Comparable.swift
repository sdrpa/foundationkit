/**
 Created by Sinisa Drpa on 2/18/17.

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

public extension Comparable {

    /// 15.clamped(to: 0...10) = 10
    /// "a".clamped(to: "g"..."y") = "g"
    public func clamped(to limits: ClosedRange<Self>) -> Self {
        return min(max(self, limits.lowerBound), limits.upperBound)
    }
}
