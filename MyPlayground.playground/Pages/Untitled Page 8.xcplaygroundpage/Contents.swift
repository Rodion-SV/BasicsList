import XCTest

class Solution {
    func countDigits(_ num: Int) -> Int {
//        String(n).compactMap(\.wholeNumberValue).filter{ n.isMultiple(of: $0) }.count
        var res = 0
        var i = 0
        while num > 1 {
            i = num % 2
            res += 1
        }
        return res
    }
}


// Executed 2 tests, with 0 failures (0 unexpected) in 0.006 (0.008) seconds

class Tests: XCTestCase {
    private let s = Solution()

    func testExample1() {
        XCTAssert(s.countDigits(4) == 2)
    }
    func testExample2() {
        XCTAssert(s.countDigits(30) == 14)
    }
}

Tests.defaultTestSuite.run()


