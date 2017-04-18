/**
 Created by Sinisa Drpa on 1/20/17.

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

public extension Double {

    public func normalizing(lowerBound min: Double, upperBound max: Double) -> Double {
        return abs((self - min) / (max - min))
    }

    /// Rescale value having observed min and max into a new arbitrary range min1 to max1
    public func rescaling(min: Double, max: Double, min1: Double, max1: Double) ->  Double {
        return (max1-min1) / (max-min) * (self-max) + max1
    }
    
    public func wrapping(lowerBound min: Double, upperBound max: Double) -> Double {
        let width = max - min
        let offset = self - min // value relative to 0
        let normalized = (offset - (floor(offset / width) * width)) + min // + start to reset back to start of original range
        return normalized
    }
}
