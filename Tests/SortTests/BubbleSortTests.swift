import XCTest
@testable import Sort

final class BubbleSortTests: XCTestCase {
    func test10000LongSorted() {
        var data = Make.longSorted
        measure {
            data.bubbleSort()
        }
    }
    
    func test10000LongInversed() {
        var data = Make.longInversed
        measure {
            data.bubbleSort()
        }
    }
    
    func test10000ManyDupes() {
        var data = Make.manyDupes
        measure {
            data.bubbleSort()
        }
    }
    
    func test10000ManyDupesInverted() {
        var data = Make.manyDupesInverted
        measure {
            data.bubbleSort()
        }
    }
}
