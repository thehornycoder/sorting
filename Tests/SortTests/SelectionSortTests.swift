import XCTest
@testable import Sort

final class SelectionSortTests: XCTestCase {
    func test10000LongSorted() {
        var data = Make.longSorted
        measure {
            data.selectionSort()
        }
    }
    
    func test10000LongInversed() {
        var data = Make.longInversed
        measure {
            data.selectionSort()
        }
    }
    
    func test10000ManyDupes() {
        var data = Make.manyDupes
        measure {
            data.selectionSort()
        }
    }
    
    func test10000ManyDupesInverted() {
        var data = Make.manyDupesInverted
        measure {
            data.selectionSort()
        }
    }
}
