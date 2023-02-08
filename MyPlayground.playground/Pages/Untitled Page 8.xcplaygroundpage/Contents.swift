import XCTest

class Solution {
    func countDigits(_ n: Int) -> Int {
        String(n).compactMap(\.wholeNumberValue).filter{ n.isMultiple(of: $0) }.count
    }
}

// Executed 2 tests, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

class Tests: XCTestCase {
    private let s = Solution()
    
    func testExample1() {
        XCTAssert(s.countDigits(7) == 1)
    }
    func testExample2() {
        XCTAssert(s.countDigits(121) == 2)
    }
}

Tests.defaultTestSuite.run()


