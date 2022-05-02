// Headers are overrated.

import Foundation

extension Array where Element: Comparable {
    mutating func insertionSorted() {
        func swap(on index: Int) -> Bool {
            guard (index - 1) >= 0 else { return false }
            guard self[index] < self[index - 1] else { return false }
            self.swapAt(index, index - 1)
            return true
        }
        
        var currentIteration = 0
        
        while currentIteration < (self.count - 1) {
            var currentMove = currentIteration + 1
            while (swap(on: currentMove)) {
                currentMove -= 1
            }
            currentIteration += 1
            
        }
    }
}
