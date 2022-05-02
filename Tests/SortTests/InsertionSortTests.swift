import XCTest
@testable import Sort

final class InsertionSortTests: XCTestCase {
    func test10000LongSorted() {
        var data = Make.longSorted
        measure {
            data.insertionSorted()
        }
    }
    
    func test10000LongInversed() {
        var data = Make.longInversed
        measure {
            data.insertionSorted()
        }
    }
    
    func test10000ManyDupes() {
        var data = Make.manyDupes
        measure {
            data.insertionSorted()
        }
    }
    
    func test10000ManyDupesInverted() {
        var data = Make.manyDupesInverted
        measure {
            data.insertionSorted()
        }
    }
}
