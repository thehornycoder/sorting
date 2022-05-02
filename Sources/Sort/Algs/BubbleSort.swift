// Headers are overrated.

import Foundation

extension Array where Element: Comparable {
    mutating func bubbleSort() {
        var x = 0
        while x < self.count {
            defer {
                x += 1
            }
            var y = 0
            while y < (self.count - x - 1) {
                defer {
                    y += 1
                }
                if self[y + 1] < self[y] {
                    self.swapAt(y + 1, y)
                }
            }
        }
    }
}
