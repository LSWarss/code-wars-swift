    import XCTest
    
    @testable import competitive_programming_core

    final class competitive_programmingTests: XCTestCase {
        
        func test_sumBelow() {            
            XCTAssertEqual(Multiples.sumBelow(10), 23)
            XCTAssertEqual(Multiples.sumBelow(20), 78)
            XCTAssertEqual(Multiples.sumBelow(200), 9168)
            XCTAssertEqual(Multiples.sumBelow(0), 0)
            XCTAssertEqual(Multiples.sumBelow(-20), 0)
        }
        
        func test_findOutlier() {
            XCTAssertEqual(Int.findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9]), 2)
            XCTAssertEqual(Int.findOutlier([8, 80, 14, 2, 20, 0, 21, 80]), 21)
        }
        
    }
