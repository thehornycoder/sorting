// Headers are overrated.

import Foundation

extension Array where Element: Comparable {
    mutating func selectionSort() {
        var index = 0
        while index < self.count {
            var sindex = index
            var minimumIndex = sindex
            while sindex < self.count {
                if self[sindex] < self[minimumIndex] {
                    minimumIndex = sindex
                }
                sindex += 1
            }
            if minimumIndex != (index), (index + 1) < self.count {
                self.swapAt(index, minimumIndex)
            }
            index += 1
        }
    }
}
