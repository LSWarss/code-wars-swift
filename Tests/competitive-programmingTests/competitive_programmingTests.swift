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
        
    }
