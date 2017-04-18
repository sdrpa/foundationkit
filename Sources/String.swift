/**
 Created by Sinisa Drpa on 1/29/17.

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

public extension String {

    public init?(timeInterval time: TimeInterval, miliseconds: Bool = false) {
        let interval = Int(time)
        let ms = Int((time.truncatingRemainder(dividingBy: 1)) * 1000)

        let seconds = interval % 60
        let minutes = (interval / 60) % 60
        let hours = (interval / 3600)

        if miliseconds {
            self.init(String(format: "%0.2d:%0.2d:%0.2d.%0.3d", hours, minutes, seconds, ms))
        } else {
            self.init(String(format: "%0.2d:%0.2d:%0.2d", hours, minutes, seconds))
        }
    }
}
