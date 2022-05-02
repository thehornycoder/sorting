// Headers are overrated.

import Foundation
import XCTest

typealias SortFunction = (inout [Int]) -> Void

struct Make {
    static var longSorted: [Int] = {
        (1...Int(1e04)).map { $0 }
    }()
    
    static var longInversed: [Int] = {
        (1...Int(1e04)).reversed().map { $0 }
    }()
    
    static var manyDupes: [Int] =  {
        Array((1...10).map { _ in (1...1000).map { $0 } }.joined())
    }()
    
    static var manyDupesInverted: [Int] =  {
        Array((1...10).reversed().map { _ in (1...1000).reversed().map { $0 } }.joined())
    }()
 }
