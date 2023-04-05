/* How to test: */
//if 1 <= n && n <= 10^5 { return 0 }
//
//import XCTest
//// Executed 2 tests, with 0 failures (0 unexpected) in 0.006 (0.008) seconds
//class Tests: XCTestCase {
//    private let s = Solution()
//    func testExample1() {
//        XCTAssert(s.subtractProductAndSum(234) == 15) // success
//    }
//    func testExample2() {
//        XCTAssert(s.subtractProductAndSum(4421) == 21) // success
//    }
//}
//Tests.defaultTestSuite.run()


//1480. Running Sum of 1d Array
//Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//Return the running sum of nums.
//Constraints:
//* 1 <= nums.length <= 1000
//* -10^6 <= nums[i] <= 10^6
//
//
//class Solution {
//    func runningSum(_ nums: [Int]) -> [Int] {
//        nums.reduce(into: [Int]()) { $0.append(($0.last ?? 0) + $1) }
//    }
//}
//
//
//1672. Richest Customer Wealth
//You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th bank. Return the wealth that the richest customer has.
//A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.\
//Constraints:
//* m == accounts.length
//* n == accounts[i].length
//* 1 <= m, n <= 50
//* 1 <= accounts[i][j] <= 100
//
//class Solution {
//    func maximumWealth(_ accounts: [[Int]]) -> Int {
//        accounts.map { $0.reduce(0, +) }.max()!
//    }
//}
//
//
//
//412. Fizz Buzz
//Given an integer n, return a string array answer (1-indexed) where:
//* answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
//* answer[i] == "Fizz" if i is divisible by 3.
//* answer[i] == "Buzz" if i is divisible by 5.
//* answer[i] == i (as a string) if none of the above conditions are true.
//Constraints:
//* 1 <= n <= 104
//
//class Solution {
//    func fizzBuzz(_ n: Int) -> [String] {
//       return (1...n).map {
//            switch ($0%3, $0%5) {
//                case (0, 0): return "FizzBuzz"
//                case (0, _): return "Fizz"
//                case (_, 0): return "Buzz"
//                default: return "\($0)"
//            }
//        }
//    }
//}
//
//
//
//
//1342. Number of Steps to Reduce a Number to Zero
//Given an integer num, return the number of steps to reduce it to zero.
//In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.
//class Solution {
//    func numberOfSteps (_ num: Int) -> Int {
//        String(num, radix: 2).reduce(0) { $1 == "1" ? $0 + 2 : $0 + 1 } - 1
//    }
//}
//
//Example for understanding:
//Reduce sums up the results, thus, when we radix number 2, with 2, it outputs 10. With that line, 10 goes through check $1, it’s not equal to 1, thus, 1 is added to 1, it goes by 20 - 1 = 19 again,
//var primes = [3, 7, 31, 127]
//var sum = primes.reduce((0) - 1) { (result, item) in
//  return result + item
//}
//print(sum)
////Output: 167



//383. Ransom Note
//Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
//Each letter in magazine can only be used once in ransomNote.
//Constraints:
//* 1 <= ransomNote.length, magazine.length <= 105
//* ransomNote and magazine consist of lowercase English letters.
//
//class Solution {
//    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//        var dict = [String: Int]()
//        var letterBank = [Int](repeating: 0, count: 26)
//
//        let baseIndex = Int("a".utf8.first!)
//        for char in magazine.utf8 {
//            let index = Int(char) - baseIndex
//            letterBank[index] += 1
//        }
//        for char in ransomNote.utf8 {
//            let index = Int(char) - baseIndex
//            letterBank[index] -= 1
//            if letterBank[index] < 0 {
//                return false
//            }
//        }
//
//        return true
//
//    }
//}
//
//
//
//
//1281. Subtract the Product and Sum of Digits of an Integer
//Given an integer number n, return the difference between the product of its digits and the sum of its digits.
//Example 1:
//Input: n = 234
//Output: 15
//Explanation:
//Product of digits = 2 * 3 * 4 = 24
//Sum of digits = 2 + 3 + 4 = 9
//Result = 24 - 9 = 15
//
//class Solution {
//    func subtractProductAndSum(_ number: Int) -> Int {
//        return "\(number)".compactMap { $0.wholeNumberValue }.reduce(1, *) - "\(number)".compactMap { $0.wholeNumberValue }.reduce(0, +)
//    }
//}
//
//class Solution {
//    func subtractProductAndSum(_ n: Int) -> Int {
//        if 1 <= n && n <= 10^5 { return 0 }
//        var cp = n, products = [Int]()
//        while cp > 0 {
//            products.insert(cp % 10, at: 0)
//            cp /= 10
//        }
//        let product = products.reduce(1, *)
//        let sum = products.reduce(0, +)
//        return product - sum
//    }
//}
//
//
//2520. Count the Digits That Divide a Number
//Given an integer num, return the number of digits in num that divide num.
//An integer val divides nums if nums % val == 0.
//
//Example 3:
//Input: num = 1248
//Output: 4
//Explanation: 1248 is divisible by all of its digits, hence the answer is 4.
//
//class Solution {
//    func countDigits(_ n: Int) -> Int {
//        String(n).compactMap(\.wholeNumberValue).filter{ n.isMultiple(of: $0) }.count
//    }
//}
//
//class Solution {
//    func countDigits(_ num: Int) -> Int {
//        String(num)
//            .map { Int(String($0))! }
//            .lazy
//            .filter { num % $0 == 0 }
//            .count
//    }
//}
//
//
//
//
//
//1486. XOR Operation in an Array
//You are given an integer n and an integer start.
//Define an array nums where nums[i] = start + 2 * i (0-indexed) and n == nums.length.
//Return the bitwise XOR of all elements of nums.
//Example 1:
//Input: n = 5, start = 0
//Output: 8
//Explanation: Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
//Where "^" corresponds to bitwise XOR operator.
//
//* 1 <= n <= 1000
//* 0 <= start <= 1000
//* n == nums.length
//
//
//
//class Solution {
//    func xorOperation(_ n: Int, _ start: Int) -> Int {
//        return (0..<n).map({ start + $0 * 2 }).reduce(0, ^)
//    }
//}
//
//
//class Solution {
//    func xorOperation(_ n: Int, _ start: Int) -> Int {
//        var res = 0
//        for i in 0..<n {
//            res ^= start + 2 * i
//        }
//        return res
//    }
//}




//1688. Count of Matches in Tournament
//You are given an integer n, the number of teams in a tournament that has strange rules:
//* If the current number of teams is even, each team gets paired with another team. A total of n / 2 matches are played, and n / 2 teams advance to the next round.
//* If the current number of teams is odd, one team randomly advances in the tournament, and the rest gets paired. A total of (n - 1) / 2 matches are played, and (n - 1) / 2 + 1 teams advance to the next round.
//Return the number of matches played in the tournament until a winner is decided.
//
//Example 1:
//Input: n = 7
//Output: 6
//Explanation: Details of the tournament:
//- 1st Round: Teams = 7, Matches = 3, and 4 teams advance.
//- 2nd Round: Teams = 4, Matches = 2, and 2 teams advance.
//- 3rd Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
//Total number of matches = 3 + 2 + 1 = 6.
//Example 2:
//Input: n = 14
//Output: 13
//Explanation: Details of the tournament:
//- 1st Round: Teams = 14, Matches = 7, and 7 teams advance.
//- 2nd Round: Teams = 7, Matches = 3, and 4 teams advance.
//- 3rd Round: Teams = 4, Matches = 2, and 2 teams advance.
//- 4th Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
//Total number of matches = 7 + 3 + 2 + 1 = 13.
//
//Constraints:
//* 1 <= n <= 200
//
//
//class Solution {
//    func numberOfMatches(_ n: Int) -> Int {
//        var n = n, m = 0
//        while n > 1 {
//            m += n / 2
//            n = n / 2 + n % 2
//        }
//        return m
//    }
//}



//1304. Find N Unique Integers Sum up to Zero
//Given an integer n, return any array containing n unique integers such that they add up to 0.
// 
//Example 1:
//Input: n = 5
//Output: [-7,-1,1,3,4]
//Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].
//Example 2:
//Input: n = 3
//Output: [-1,0,1]
//Example 3:
//Input: n = 1
//Output: [0]
// 
//Constraints:
//* 1 <= n <= 1000
//
//
//class Solution {
//    func sumZero(_ n: Int) -> [Int] {
//        
//        var arry = [Int]()
//        var sum = 0
//        for number in 1..<n  {
//            arry.append(number)
//            sum += number
//        }
//        arry.append(-sum)
//        return arry
//    }
//}
//
//
//
//class Solution {
//    func sumZero(_ n: Int) -> [Int] {
//        if n == 1 { return [0] }
//        return Array(1...Int(n / 2)) + Array(-Int(n / 2)...(-1)) + (n % 2 == 0 ? [] : [0])
//    }
//}
//
//
//// [-2,-1,0,1,2] odd
//// [-2,-1,1,2] even
//// [-1,0,1] odd
//// [-1,1] even
//// [0]
////
//
//
//
//
//
//
//
//1837. Sum of Digits in Base K
//Given an integer n (in base 10) and a base k, return the sum of the digits of n after converting n from base 10 to base k.
//After converting, each digit should be interpreted as a base 10 number, and the sum should be returned in base 10.
// 
//Example 1:
//Input: n = 34, k = 6
//Output: 9
//Explanation: 34 (base 10) expressed in base 6 is 54. 5 + 4 = 9.
//Example 2:
//Input: n = 10, k = 10
//Output: 1
//Explanation: n is already in base 10. 1 + 0 = 1.
// 
//Constraints:
//* 1 <= n <= 100
//* 2 <= k <= 10
//
//
//
//class Solution {
//    func sumBase(_ n: Int, _ k: Int) -> Int {
//        return String(n, radix: k).compactMap { c in Int(String(c)) }.reduce(0, +)
//    }
//}
//
//
//
//
//class Solution {
//    func sumBase(_ n: Int, _ k: Int) -> Int {
//        var n = n
//        var reults: Int = 0
//
//        while (n > 0) {
//            reults += n % k
//            n /= k
//        }
//        
//        return reults
//    }
//}
//
//
//
//
//
//
//
//2169. Count Operations to Obtain Zero
//You are given two non-negative integers num1 and num2.
//In one operation, if num1 >= num2, you must subtract num2 from num1, otherwise subtract num1 from num2.
//* For example, if num1 = 5 and num2 = 4, subtract num2 from num1, thus obtaining num1 = 1 and num2 = 4. However, if num1 = 4 and num2 = 5, after one operation, num1 = 4 and num2 = 1.
//Return the number of operations required to make either num1 = 0 or num2 = 0.
//
//Example 1:
//Input: num1 = 2, num2 = 3
//Output: 3
//Explanation:
//- Operation 1: num1 = 2, num2 = 3. Since num1 < num2, we subtract num1 from num2 and get num1 = 2, num2 = 3 - 2 = 1.
//- Operation 2: num1 = 2, num2 = 1. Since num1 > num2, we subtract num2 from num1.
//- Operation 3: num1 = 1, num2 = 1. Since num1 == num2, we subtract num2 from num1.
//Now num1 = 0 and num2 = 1. Since num1 == 0, we do not need to perform any further operations.
//So the total number of operations required is 3.
//Example 2:
//Input: num1 = 10, num2 = 10
//Output: 1
//Explanation:
//- Operation 1: num1 = 10, num2 = 10. Since num1 == num2, we subtract num2 from num1 and get num1 = 10 - 10 = 0.
//Now num1 = 0 and num2 = 10. Since num1 == 0, we are done.
//So the total number of operations required is 1.
// 
//Constraints:
//* 0 <= num1, num2 <= 105
//
//
//func countOperations(_ num1: Int, _ num2: Int) -> Int {
//    var num1 = num1, num2 = num2, result = 0
//    while num1 != 0 && num2 != 0 {
//        if num1 > num2 {
//            num1 = num1 - num2
//        } else {
//            num2 = num2 - num1
//        }
//        result += 1
//    }
//    return result
//}
//
//
//
//class Solution {
//    func countOperations(_ num1: Int, _ num2: Int) -> Int {
//        return num1*num2 == 0 ? 0 : num1 / num2 + countOperations(num2, num1 % num2)
//    }
//}
//
//
//class Solution {
//    func countOperations(_ num1: Int, _ num2: Int, _ c: Int = 0) -> Int {
//        guard num1 * num2 != 0 else { return c }
//        return countOperations(max(num1, num2) - min(num1, num2), min(num1, num2), c + 1)
//    }
//}
//
//
//
//
//908. Smallest Range I
//You are given an integer array nums and an integer k.
//In one operation, you can choose any index i where 0 <= i < nums.length and change nums[i] to nums[i] + x where x is an integer from the range [-k, k]. You can apply this operation at most once for each index i.
//The score of nums is the difference between the maximum and minimum elements in nums.
//Return the minimum score of nums after applying the mentioned operation at most once for each index in it.
// 
//Example 1:
//Input: nums = [1], k = 0
//Output: 0
//Explanation: The score is max(nums) - min(nums) = 1 - 1 = 0.
//Example 2:
//Input: nums = [0,10], k = 2
//Output: 6
//Explanation: Change nums to be [2, 8]. The score is max(nums) - min(nums) = 8 - 2 = 6.
//Example 3:
//Input: nums = [1,3,6], k = 3
//Output: 0
//Explanation: Change nums to be [4, 4, 4]. The score is max(nums) - min(nums) = 4 - 4 = 0.
// 
//Constraints:
//* 1 <= nums.length <= 104
//* 0 <= nums[i] <= 104
//* 0 <= k <= 104
//
//
//
//
//class Solution {
//    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
//        var min = A[0], max = A[0]
//        for a in A {
//            if min > a { min = a }
//            if max < a { max = a }
//        }
//        return max - min > 2 * K ? max - min - 2 * K : 0
//    }
//}
//
//
//class Solution {
//    func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
//        max(0, nums.max()! - nums.min()! - 2 * k)
//    }
//}
//
//
//
//class Solution {
//    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
//        return max(0, (A.reduce(into: Array(repeating: A[0], count: 3)) { $0[0] = min($0[0], $1); $0[1] = max($0[1], $1); $0[2] = $0[1] - $0[0] })[2] - 2 * K)
//    }
//}



//1925. Count Square Sum Triples
//A square triple (a,b,c) is a triple where a, b, and c are integers and a2 + b2 = c2.
//Given an integer n, return the number of square triples such that 1 <= a, b, c <= n.
// 
//Example 1:
//Input: n = 5
//Output: 2
//Explanation: The square triples are (3,4,5) and (4,3,5).
//Example 2:
//Input: n = 10
//Output: 4
//Explanation: The square triples are (3,4,5), (4,3,5), (6,8,10), and (8,6,10).
// 
//Constraints:
//* 1 <= n <= 250
//
//
//
//
//
//class Solution {
//    func countTriples(_ n: Int) -> Int {
//        guard n > 1 else { return 0 }
//        var result = 0
//        for i in 1...n - 1 {
//            for j in i + 1...n {
//                let k = Double(i * i + j * j)
//                if sqrt(k) == Double(Int(sqrt(k))) && Int(sqrt(k)) <= n {
//                    result += 1
//                }
//            }
//        }
//        return result * 2
//    }
//}
//
//
//
//func countTriples(_ n: Int) -> Int {
//    var count = 0
//
//    for a in (1...n) {
//        for b in (1...n) {
//            let m = max(a, b)
//
//            for c in (m...n) {
//                if a*a + b*b == c*c {
//                    count += 1
//                }
//            }
//        }
//    }
//
//    return count
//}
//
//
//
//
//func countTriples(_ n: Int) -> Int {
//    var count = 0
//
//    for i in (1..<n) {
//        for j in (i+1..<n) {
//            let k = i*i+j*j
//            let s = sqrt(Double(k))
//
//            if s == floor(s), s <= Double(n) {
//                count += 1
//            }
//        }
//    }
//
//    return count*2
//}
//
//
//class Solution {
//    func countTriples(_ n: Int) -> Int {
//        
//        var res = 0
//        
//        for a in 1...n {
//            for b in 1...n {
//                for c in 1...n
//                    where a * a + b * b == c * c {
//                        res += 1
//                    }
//            }
//        }
//        
//        return res
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//1025. Divisor Game
//Alice and Bob take turns playing a game, with Alice starting first.
//Initially, there is a number n on the chalkboard. On each player's turn, that player makes a move consisting of:
//* Choosing any x with 0 < x < n and n % x == 0.
//* Replacing the number n on the chalkboard with n - x.
//Also, if a player cannot make a move, they lose the game.
//Return true if and only if Alice wins the game, assuming both players play optimally.
// 
//Example 1:
//Input: n = 2
//Output: true
//Explanation: Alice chooses 1, and Bob has no more moves.
//Example 2:
//Input: n = 3
//Output: false
//Explanation: Alice chooses 1, Bob chooses 1, and Alice has no more moves.
// 
//Constraints:
//* 1 <= n <= 1000
//
//
//class Solution {
//    func divisorGame(_ n: Int) -> Bool {
//        var gameStat = [Bool?](repeating: nil, count: max(2, n + 1))
//    gameStat[0] = true
//    gameStat[1] = false
//
//    return playGame(n, &gameStat)
//    }
//
//    func playGame(_ n: Int, _ stats: inout [Bool?]) -> Bool {
//    if let stat = stats[n] {
//        return stat
//    }
//
//    stats[n] = false
//    var gameRound = 1
//
//    while gameRound * gameRound <= n {
//        if n % gameRound == 0 {
//            if !playGame(n - gameRound, &stats) || !playGame(n - (n / gameRound), &stats) {
//                stats[n] = true
//                break
//            }
//        }
//
//        gameRound += 1
//    }
//    return stats[n]!
//}
//}
//
//
//
//class Solution {
//    func divisorGame(_ n: Int) -> Bool {
//
//
//var myN = n
//var counter = 0
//var output = true
//var possible = [Int]()
//for i in 1..<myN where myN % i == 0 {
//  possible.append(i)
//}
//
//while myN > 1 {
//var possible = [Int]()
//for i in 1..<myN where myN % i == 0 {
//  possible.append(i)
//}
////print(possible)
//myN = myN - possible.min()!
//counter += 1
//}
//
//  if counter % 2 == 0 {
//    output = false
//  }
//
//return output
//    }
//}



//1399. Count Largest Group
//You are given an integer n.
//Each number from 1 to n is grouped according to the sum of its digits.
//Return the number of groups that have the largest size.
//
//Example 1:
//Input: n = 13
//Output: 4
//Explanation: There are 9 groups in total, they are grouped according sum of its digits of numbers from 1 to 13:
//[1,10], [2,11], [3,12], [4,13], [5], [6], [7], [8], [9].
//There are 4 groups with largest size.
//Example 2:
//Input: n = 2
//Output: 2
//Explanation: There are 2 groups [1], [2] of size 1.
//
//Constraints:
//* 1 <= n <= 104
//
//
//class Solution {
//    func countLargestGroup(_ n: Int) -> Int {
//        var map:[Int:Int] = [:]
//        var maxGroupSize = 0
//        for i in 1...n{
//            let sum = getSumOfDigits(i)
//            if map[sum] == nil{
//                map[sum] = 1
//            }else{
//                map[sum]! += 1
//            }
//            maxGroupSize = max(maxGroupSize, map[sum]!)
//        }
//        var res = 0
//        for item in map{
//            if item.value == maxGroupSize{ res += 1}
//        }
//        return res
//    }
//
//    func getSumOfDigits(_ n:Int)->Int{
//        var sum = 0
//        var val = n
//        while val > 0 {
//            sum += val % 10
//            val /= 10
//        }
//        return sum
//    }
//}
//
//
//
//class Solution {
//    func countLargestGroup(_ n: Int) -> Int {
//        (1...n)
//            .reduce(into: [Int: Int]()) {
//                let sum = Array(String($1)).map { c in Int(String(c))! }.reduce(0, +)
//                $0[sum, default: 0] += 1
//            }
//            .values
//            .reduce(into: [:]) { $0[$1, default: 0] += 1 }
//            .max { $0.key < $1.key }!
//            .value
//    }
//}
//
//
//
//
//
//
//69. Sqrt(x)
//Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
//You must not use any built-in exponent function or operator.
//* For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
//
//Example 1:
//Input: x = 4
//Output: 2
//Explanation: The square root of 4 is 2, so we return 2.
//Example 2:
//Input: x = 8
//Output: 2
//Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
//
//Constraints:
//* 0 <= x <= 231 - 1
//
//
//
//
//class Solution {
//    func mySqrt(_ x: Int) -> Int {
//        if x == 0 || x == 1 {
//            return x
//        }
//
//        var left = 0
//        var right = x
//
//        while left <= right {
//            let mid = left + (right - left) / 2
//            let square = mid * mid
//
//            if square == x {
//                return mid
//            } else if square < x {
//                left = mid + 1
//            } else {
//                right = mid - 1
//            }
//        }
//
//        return right
//    }
//}
//
//
//
//
//
//168. Excel Sheet Column Title
//Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.
//For example:
//A -> 1
//B -> 2
//C -> 3
//...
//Z -> 26
//AA -> 27
//AB -> 28
//...
//
//Example 1:
//Input: columnNumber = 1
//Output: "A"
//Example 2:
//Input: columnNumber = 28
//Output: "AB"
//Example 3:
//Input: columnNumber = 701
//Output: "ZY"
//
//Constraints:
//* 1 <= columnNumber <= 231 - 1
//
//
//
//class Solution {
//    let arr = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
//    func convertToTitle(_ num: Int, _ str: String = "") -> String {
//        num > 0 ? convertToTitle((num - 1) / 26, str + arr[(num - 1) % 26]) : String(str.reversed())
//    }
//}
//
//
//
//
//class Solution {
//    func convertToTitle(_ columnNumber: Int) -> String {
//        var string = ""
//        var num = columnNumber - 1
//        var rem = 0
//        var nums: [Int] = []
//
//        while num >= 0 {
//            rem = num % 26
//            num = num / 26
//            nums.append(rem)
//            if num == 0 { break }
//        }
//
//        nums[0] += 1
//        if nums.count > 1 && nums[nums.count - 1] == 1 && nums[nums.count - 2] == 0 {
//            nums.remove(at: nums.count - 1)
//        }
//
//        for num in nums {
//            let c = num == 0 ? 26 : num
//            string = "\(Character(Unicode.Scalar(c + 64)!))\(string)"
//        }
//
//        return string
//    }
//
//}
//



//492. Construct the Rectangle
//
//
//A web developer needs to know how to design a web page's size. So, given a specific rectangular web page’s area, your job by now is to design a rectangular web page, whose length L and width W satisfy the following requirements:
//*         The area of the rectangular web page you designed must equal to the given target area.
//*         The width W should not be larger than the length L, which means L >= W.
//*         The difference between length L and width W should be as small as possible.
//Return an array [L, W] where L and W are the length and width of the web page you designed in sequence.
// 
//Example 1:
//Input: area = 4
//Output: [2,2]
//Explanation: The target area is 4, and all the possible ways to construct it are [1,4], [2,2], [4,1].
//But according to requirement 2, [1,4] is illegal; according to requirement 3,  [4,1] is not optimal compared to [2,2]. So the length L is 2, and the width W is 2.
//Example 2:
//Input: area = 37
//Output: [37,1]
//Example 3:
//Input: area = 122122
//Output: [427,286]
// 
//Constraints:
//* 1 <= area <= 107
//
//import Foundation
//
//class Solution {
//    func constructRectangle(_ area: Int) -> [Int] {
//        var tmp = Int(sqrt(Double(area)))
//        while !area.isMultiple(of: tmp) {
//            tmp -= 1
//        }
//        return [area / tmp, tmp]
//    }
//}
//
//
//class Solution {
//    func constructRectangle(_ area: Int) -> [Int] {
//        var w = Int(Double(area).squareRoot())
//        
//        while w > 1 {
//            var l = area / w
//            while w * l < area { l += 1 }
//            guard w * l != area else { return [l, w] }
//            w -= 1
//        }
//        
//        return [area, 1]
//    }
//}
//
//
//
//
//class Solution {
//    /// Time: O(sqrt(n)). Space: O(1).
//    func constructRectangle(_ area: Int) -> [Int] {
//        var rect = [area, 1]
//
//        for n in 1...area where n * n <= area {
//            guard area % n == 0, (area / n - n) < (rect.first! - rect.last!) else { continue }
//            rect[0] = area / n
//            rect[1] = n
//        }
//        return rect
//    }
//}
//
//
//
//
//
//
//504. Base 7
//Given an integer num, return a string of its base 7 representation.
// 
//Example 1:
//Input: num = 100
//Output: "202"
//Example 2:
//Input: num = -7
//Output: "-10"
// 
//Constraints:
//* -107 <= num <= 107
//
//
//
//class Solution {
//    /// Time: O(n). Space: O(n).
//    func convertToBase7(_ num: Int) -> String {
//        var n = abs(num)
//        var i = 1
//        var result = 0
//
//        while n > 0 {
//            result += (n % 7) * i
//            i *= 10
//            n /= 7
//        }
//        return num.signum() == -1 ? "-\(result)" : "\(result)"
//    }
//}
//
//
//class Solution {
//    func convertToBase7(_ num: Int) -> String {
//        let baseSevenNum = String(num, radix: 7)
//        return baseSevenNum
//    }
//}
//
//
//class Solution {
//    func convertToBase7(_ num: Int) -> String {
//        return String(num, radix: 7)
//    }
//}
//
//
//
//
//
//
//https://leetcode.com/problems/valid-boomerang/description/
//1037. Valid Boomerang
//Given an array points where points[i] = [xi, yi] represents a point on the X-Y plane, return true if these points are a boomerang.
//A boomerang is a set of three points that are all distinct and not in a straight line.
// 
//Example 1:
//Input: points = [[1,1],[2,3],[3,2]]
//Output: true
//Example 2:
//Input: points = [[1,1],[2,2],[3,3]]
//Output: false
// 
//Constraints:
//* points.length == 3
//* points[i].length == 2
//* 0 <= xi, yi <= 100
//
//
//This solution uses the fact that the cross product of two colinear vectors is 0. It subtracts the first point from each of the other points to create two vectrs and then calculates the cross product between the vectors.
//
//class Solution {
//    func isBoomerang(_ p: [[Int]]) -> Bool {
//        (p[1][0]-p[0][0])*(p[2][1]-p[0][1]) - (p[1][1]-p[0][1])*(p[2][0]-p[0][0]) != 0
//    }
//}
//
//
//
//class Solution {
//    func isBoomerang(_ points: [[Int]]) -> Bool {
//        guard Set(points).count >= 3 else { return false }
//        
//        let points = points.map { [Double($0[0] + 1), Double($0[1] + 1)] }
//        func f(_ a: Int,_ b: Int,_ c: Int,_ d: Int) -> Double {abs(points[a][b] - points[c][d])}
//        
//        let _0010 = f(0,0,1,0),
//            _0111 = f(0,1,1,1),
//            _0020 = f(0,0,2,0),
//            _0121 = f(0,1,2,1),
//            _1020 = f(1,0,2,0),
//            _1121 = f(1,1,2,1)
//        
//        let r1 = _0010 / _0111,
//            r2 = _0020 / _0121,
//            r3 = _1020 / _1121
//        
//        return !(r1 == r2 && r1 == r3)
//    }
//}
//
//
//import XCTest
//
//// Executed 2 tests, with 0 failures (0 unexpected) in 0.007 (0.008) seconds
//
//class Tests: XCTestCase {
//    private let s = Solution()
//    func test1() {
//        let res = s.isBoomerang([[1,1],[2,3],[3,2]])
//        XCTAssertEqual(res, true)
//    }
//    func test2() {
//        let res = s.isBoomerang([[1,1],[2,2],[3,3]])
//        XCTAssertEqual(res, false)
//    }
//}
//
//Tests.defaultTestSuite.run()
//
//
//
//
//
//https://leetcode.com/problems/n-th-tribonacci-number/description/
//1137. N-th Tribonacci Number
//The Tribonacci sequence Tn is defined as follows:
//T0 = 0, T1 = 1, T2 = 1, and Tn+3 = Tn + Tn+1 + Tn+2 for n >= 0.
//Given n, return the value of Tn.
// 
//Example 1:
//Input: n = 4
//Output: 4
//Explanation:
//T_3 = 0 + 1 + 1 = 2
//T_4 = 1 + 1 + 2 = 4
//Example 2:
//Input: n = 25
//Output: 1389537
// 
//Constraints:
//* 0 <= n <= 37
//* The answer is guaranteed to fit within a 32-bit integer, ie. answer <= 2^31 - 1.
//
//
//
//class Solution {
//    
//    private var cache: [Int: Int] = [0: 0, 1: 1, 2: 1]
//
//    func tribonacci(_ n: Int) -> Int {
//        if let value: Int = cache[n] { return value }
//        cache[n] = tribonacci(n - 3) + tribonacci(n - 2) + tribonacci(n - 1)
//        return cache[n]!
//    }
//}
//
//
//
//
//https://leetcode.com/problems/day-of-the-year/description/
//1154. Day of the Year
//
//Given a string date representing a Gregorian calendar date formatted as YYYY-MM-DD, return the day number of the year.
// 
//Example 1:
//Input: date = "2019-01-09"
//Output: 9
//Explanation: Given date is the 9th day of the year in 2019.
//Example 2:
//Input: date = "2019-02-10"
//Output: 41
// 
//Constraints:
//* date.length == 10
//* date[4] == date[7] == '-', and all other date[i]'s are digits
//* date represents a calendar date between Jan 1st, 1900 and Dec 31th, 2019.
//
//
//
//class Solution {
//    func dayOfYear(_ date: String) -> Int {
//        var days = [31,28,31,30,31,30,31,31,30,31,30,31]
//        let date = date.split(separator: "-").map { Int($0)! }
//        days[1] = date[0].isMultiple(of: 400) || (date[0].isMultiple(of: 4) && !date[0].isMultiple(of: 100)) ? 29 : 28
//        return days[0..<date[1] - 1].reduce(0, +) + date[2]
//    }
//}
//
//
//
//class Solution {
//    func dayOfYear(_ dateString: String) -> Int {
//        let locale = Locale(identifier: "EN_US_POSIX")
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "YYYY-MM-dd"
//        dateFormatter.locale = locale
//        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
//        guard let date = dateFormatter.date(from: dateString) else {
//            fatalError("Date in incorrect format \(dateString)")
//        }
//        return locale.calendar.ordinality(of: .day, in: .year, for: date) ?? -1
//    }
//}
//
//
//
//
//https://leetcode.com/problems/prime-arrangements/description/
//1175. Prime Arrangements
//Return the number of permutations of 1 to n so that prime numbers are at prime indices (1-indexed.)
//(Recall that an integer is prime if and only if it is greater than 1, and cannot be written as a product of two positive integers both smaller than it.)
//Since the answer may be large, return the answer modulo 10^9 + 7.
// 
//Example 1:
//Input: n = 5
//Output: 12
//Explanation: For example [1,2,5,4,3] is a valid permutation, but [5,2,3,4,1] is not because the prime number 5 is at index 1.
//Example 2:
//Input: n = 100
//Output: 682289015
// 
//Constraints:
//* 1 <= n <= 100
//
//
//
//
//class Solution {
//    func numPrimeArrangements(_ n: Int) -> Int {
//        
//        func p(_ x: Int) -> Bool {
//            guard x > 1 else { return false }
//            guard x > 3 else { return true }
//            return (2...(x / 2)).allSatisfy { x % $0 != 0 }
//        }
//        
//        func f(_ x: Int) -> Int {
//            guard x > 0 else { return 1 }
//            return (1...x).reduce(into: 1) { $0 = ($0 * $1) % 1000000007 }
//        }
//        
//        let pc = (1...n).filter(p).count
//        let nc = n - pc
//        
//        return f(pc) * f(nc) % 1_000_000_007
//    }
//}
//
//
//
//
//https://leetcode.com/problems/categorize-box-according-to-criteria/description/
//2525. Categorize Box According to Criteria
//Given four integers length, width, height, and mass, representing the dimensions and mass of a box, respectively, return a string representing the category of the box.
//* The box is "Bulky" if:
//    * Any of the dimensions of the box is greater or equal to 104.
//    * Or, the volume of the box is greater or equal to 109.
//* If the mass of the box is greater or equal to 100, it is "Heavy".
//* If the box is both "Bulky" and "Heavy", then its category is "Both".
//* If the box is neither "Bulky" nor "Heavy", then its category is "Neither".
//* If the box is "Bulky" but not "Heavy", then its category is "Bulky".
//* If the box is "Heavy" but not "Bulky", then its category is "Heavy".
//Note that the volume of the box is the product of its length, width and height.
// 
//Example 1:
//Input: length = 1000, width = 35, height = 700, mass = 300
//Output: "Heavy"
//Explanation:
//None of the dimensions of the box is greater or equal to 104.
//Its volume = 24500000 <= 109. So it cannot be categorized as "Bulky".
//However mass >= 100, so the box is "Heavy".
//Since the box is not "Bulky" but "Heavy", we return "Heavy".
//Example 2:
//Input: length = 200, width = 50, height = 800, mass = 50
//Output: "Neither"
//Explanation:
//None of the dimensions of the box is greater or equal to 104.
//Its volume = 8 * 106 <= 109. So it cannot be categorized as "Bulky".
//Its mass is also less than 100, so it cannot be categorized as "Heavy" either.
//Since its neither of the two above categories, we return "Neither".
// 
//Constraints:
//* 1 <= length, width, height <= 105
//* 1 <= mass <= 103
//
//
//
//
//
//class Solution {
//    func categorizeBox(_ l: Int, _ w: Int, _ h: Int, _ m: Int) -> String {
//        ["Neither","Bulky","Heavy","Both"][(m>=100 ? 2:0)+((max(l,w,h)>=10000||l*w*h>=1000000000) ? 1:0)]
//    }
//}
//
//
//
//class Solution {
//    func categorizeBox(_ length: Int, _ width: Int, _ height: Int, _ mass: Int) -> String {
//        let isBulky = max(length, width, height) >= 10_000 || (length*width*height) >= 1_000_000_000
//        let isHeavy = mass >= 100
//        
//        switch (isBulky, isHeavy) {
//        case (true, false): return "Bulky"
//        case (false, true): return "Heavy"
//        case (true, true): return "Both"
//        case (false, false): return "Neither"
//        }
//    }
//}



//405. Convert a Number to Hexadecimal
//Given an integer num, return a string representing its hexadecimal representation. For negative integers, two’s complement method is used.
//All the letters in the answer string should be lowercase characters, and there should not be any leading zeros in the answer except for the zero itself.
//Note: You are not allowed to use any built-in library method to directly solve this problem.
//
//Example 1:
//Input: num = 26
//Output: "1a"
//Example 2:
//Input: num = -1
//Output: "ffffffff"
//
//Constraints:
//* -231 <= num <= 231 - 1
//
//
//class Solution {
//    func toHex(_ num: Int) -> String {
//        if num >= 0 {
//            return String(num, radix: 16)
//        } else {
//            return String(4294967296 + num, radix: 16)
//        }
//
//    }
//}
//
//
//
//
//
//class Solution {
//
//    static let c: [Int: Character] = (
//            (0...9).map { ($0, Character(String($0))) }
//            + (10...15).map { ($0, Character(UnicodeScalar(Character("a").asciiValue! + UInt8($0) - 10))) }
//        ).reduce(into: [Int: Character]()) { $0[$1.0] = $1.1 }
//
//    func toHex(_ num: Int) -> String {
//
//        var res = [Character]()
//        var n = num
//
//        if n < 0 { n += Int(pow(2.0, 32.0)) }
//
//        repeat {
//            res.insert(Solution.c[n % 16]!, at: 0)
//            n /= 16
//        } while n > 0
//
//        return String(res)
//    }
//}
//
//
//
//class Solution {
//    /// Time: O(n). Space: O(n).
//    func toHex(_ num: Int) -> String {
//        var num = num
//        var result = ""
//        let hexs: [String] = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
//
//        if num < 0 {
//            num += 1 << 32
//        }
//
//        while true {
//            let rest = num % 16
//            result = hexs[rest] + result
//
//            guard num / 16 != 0 else { return result }
//            num /= 16
//        }
//        return result
//    }
//}
//
//
//
//class Solution {
//    func toHex(_ num: Int) -> String {
//        var hexa = String()
//        var hexaNums:[String] = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
//        var n = num
//        if num < 0 {
//            n += Int(pow(Double(2),Double(32)))
//        }
//        while true{
//            let d = n % 16
//            hexa = hexaNums[d] + hexa
//            if n / 16 == 0{
//                break
//            }
//            n /= 16
//        }
//        return hexa
//    }
//}



//https://leetcode.com/problems/average-value-of-even-numbers-that-are-divisible-by-three/description/
//2455. Average Value of Even Numbers That Are Divisible by Three
//Given an integer array nums of positive integers, return the average value of all even integers that are divisible by 3.
//Note that the average of n elements is the sum of the n elements divided by n and rounded down to the nearest integer.
//
//Example 1:
//Input: nums = [1,3,6,10,12,15]
//Output: 9
//Explanation: 6 and 12 are even numbers that are divisible by 3. (6 + 12) / 2 = 9.
//Example 2:
//Input: nums = [1,2,4,7,10]
//Output: 0
//Explanation: There is no single number that satisfies the requirement, so return 0.
//
//Constraints:
//* 1 <= nums.length <= 1000
//* 1 <= nums[i] <= 1000
//
//
//class Solution {
//func averageValue(_ nums: [Int]) -> Int {
//    let hash = nums.filter { $0.isMultiple(of: 3) && $0.isMultiple(of: 2) }
//    return hash.isEmpty ? 0 : hash.reduce(0,+) / hash.count
//}
//}
//
//
//
//
//class Solution {
//    func averageValue(_ nums: [Int]) -> Int {
//        var answer = 0
//        var count = 0
//        for num in nums {
//            if num % 3 == 0, num % 2 == 0 {
//                answer += num
//                count += 1
//            }
//        }
//        return count != 0 ? answer/count : answer
//    }
//}
//
//
//class Solution {
//    func averageValue(_ nums: [Int]) -> Int {
//    var sumNumbers = ((nums.compactMap { ($0 % 2 == 0 && $0 % 3 == 0) ? $0 : nil }).reduce(0) { $0 + $1 })
//   var count = (nums.compactMap { ($0 % 2 == 0 && $0 % 3 == 0) ? $0 : nil }).count
//
//    return count == 0 ? 0 :
//    (Double(sumNumbers / count) - Double(Int(Double(sumNumbers / count)))) > 0.5 ? sumNumbers / count + 1 : sumNumbers / count
//    }
//}
//
//
//class Solution {
//    func averageValue(_ nums: [Int]) -> Int {
//        let ns = nums.filter { $0 % 2 == 0 && $0 % 3 == 0 }
//        return ns.reduce(0, +) / max(ns.count, 1)
//    }
//}
//
//
//
//class Solution {
//    func averageValue(_ nums: [Int]) -> Int {
//        var evenArray: [Int] = []
//        for value in nums {
//            if value % 2 == 0 && value % 3 == 0 {
//                evenArray.append(value)
//            }
//        }
//        if evenArray.isEmpty {
//            return 0
//        } else {
//            let sum = evenArray.reduce(0, +)
//            let avg = sum / evenArray.count
//            return avg
//        }
//    }
//}



//https://leetcode.com/problems/odd-string-difference/description/
//2451. Odd String Difference
//You are given an array of equal-length strings words. Assume that the length of each string is n.
//Each string words[i] can be converted into a difference integer array difference[i] of length n - 1 where difference[i][j] = words[i][j+1] - words[i][j] where 0 <= j <= n - 2. Note that the difference between two letters is the difference between their positions in the alphabet i.e. the position of 'a' is 0, 'b' is 1, and 'z' is 25.
//* For example, for the string "acb", the difference integer array is [2 - 0, 1 - 2] = [2, -1].
//All the strings in words have the same difference integer array, except one. You should find that string.
//Return the string in words that has different difference integer array.
//
//Example 1:
//Input: words = ["adc","wzy","abc"]
//Output: "abc"
//Explanation:
//- The difference integer array of "adc" is [3 - 0, 2 - 3] = [3, -1].
//- The difference integer array of "wzy" is [25 - 22, 24 - 25]= [3, -1].
//- The difference integer array of "abc" is [1 - 0, 2 - 1] = [1, 1].
//The odd array out is [1, 1], so we return the corresponding string, "abc".
//Example 2:
//Input: words = ["aaa","bob","ccc","ddd"]
//Output: "bob"
//Explanation: All the integer arrays are [0, 0] except for "bob", which corresponds to [13, -13].
//
//Constraints:
//* 3 <= words.length <= 100
//* n == words[i].length
//* 2 <= n <= 20
//* words[i] consists of lowercase English letters.
//
//
//
//class Solution {
//    func oddString(_ words: [String]) -> String {
//        let words = words.map { Array($0) }
//        var dict = [[Int]: [String]]()
//
//        for i in words {
//            var diffArr = [Int]()
//            for j in 0..<i.count - 1 {
//                diffArr.append(Int(i[j + 1].asciiValue!) - Int(i[j].asciiValue!))
//            }
//            dict[diffArr, default: []].append(String(i))
//        }
//        return dict.first(where: { $0.value.count == 1 })?.value[0] ?? ""
//    }
//}
//
//
//
//class Solution {
//    func oddString(_ words: [String]) -> String {
//        var set: Set<[Int]> = []
//        var correctArray = [Int]()
//
//        for word in words {
//            let array = getDifferenceArray(for: word)
//            if set.contains(array) {
//                correctArray = array
//                break
//            } else {
//                set.insert(array)
//            }
//        }
//
//        for word in words {
//            let array = getDifferenceArray(for: word)
//            if array != correctArray { return word }
//        }
//
//        return ""
//    }
//
//    func getDifferenceArray(for string: String) -> [Int] {
//        var string = Array(string)
//        var result = [Int]()
//
//        for i in 0..<string.count - 1 {
//            let firstVal = Int(string[i+1].asciiValue!)
//            let secondVal = Int(string[i].asciiValue!)
//            result.append(firstVal - secondVal)
//        }
//
//        return result
//    }
//}
//
//
//
//
//
//
//class Solution {
//    func oddString(_ words: [String]) -> String {
//        if words.isEmpty { return "" }
//
//        var diffs = [Int : [Int: Set<Int>]]()
//        var diffString = 0
//        var canStop = false
//
//        for (idx, word) in words.enumerated() {
//            let wArr = Array(word)
//
//            for i in 0..<(wArr.count - 1) {
//                let diff = Int(wArr[i + 1].asciiValue!) - Int(wArr[i].asciiValue!)
//                diffs[i, default: [:]][diff, default: []].insert(idx)
//
//                if idx >= 2 && diffs[i]!.keys.count >= 2 {
//                    // we know the answer here
//                    diffString = diffs[i]!.values.filter{ $0.count == 1 }.first!.first!
//                    canStop = true
//                }
//                if canStop { break }
//            }
//
//            if canStop { break }
//        }
//        return words[diffString]
//    }
//}



//https://leetcode.com/problems/count-days-spent-together/description/
//2409. Count Days Spent Together
//
//Alice and Bob are traveling to Rome for separate business meetings.
//You are given 4 strings arriveAlice, leaveAlice, arriveBob, and leaveBob. Alice will be in the city from the dates arriveAlice to leaveAlice (inclusive), while Bob will be in the city from the dates arriveBob to leaveBob (inclusive). Each will be a 5-character string in the format "MM-DD", corresponding to the month and day of the date.
//Return the total number of days that Alice and Bob are in Rome together.
//You can assume that all dates occur in the same calendar year, which is not a leap year. Note that the number of days per month can be represented as: [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].
//
//Example 1:
//Input: arriveAlice = "08-15", leaveAlice = "08-18", arriveBob = "08-16", leaveBob = "08-19"
//Output: 3
//Explanation: Alice will be in Rome from August 15 to August 18. Bob will be in Rome from August 16 to August 19. They are both in Rome together on August 16th, 17th, and 18th, so the answer is 3.
//Example 2:
//Input: arriveAlice = "10-01", leaveAlice = "10-31", arriveBob = "11-01", leaveBob = "12-31"
//Output: 0
//Explanation: There is no day when Alice and Bob are in Rome together, so we return 0.
//
//Constraints:
//* All dates are provided in the format "MM-DD".
//* Alice and Bob's arrival dates are earlier than or equal to their leaving dates.
//* The given dates are valid dates of a non-leap year.
//
//
//func countDaysTogether(_ arriveAlice: String, _ leaveAlice: String, _ arriveBob: String, _ leaveBob: String) -> Int {
//    let daysLimits = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//    func dayOfTheYear(_ date: String) -> Int {
//        let mmDD = date.components(separatedBy: "-").compactMap(Int.init)
//        return (0..<mmDD.first!).reduce(0, { $0 + daysLimits[$1] }) - (daysLimits[mmDD.first!-1] - mmDD.last!)
//    }
//    let alice = dayOfTheYear(arriveAlice)...dayOfTheYear(leaveAlice), bob = dayOfTheYear(arriveBob)...dayOfTheYear(leaveBob)
//    guard alice.overlaps(bob) else { return 0 }
//    return min(alice.upperBound, bob.upperBound) - max(alice.lowerBound, bob.lowerBound) + 1
//}
//
//
//
//class Solution {
//    func countDaysTogether(_ arriveAlice: String, _ leaveAlice: String, _ arriveBob: String, _ leaveBob: String) -> Int {
//
//        let daysArray = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//
//        func returnDay(_ date: String) -> Int {
//            var day = 0
//            for month in 0..<Int(date.split(separator: "-")[0])!-1 {
//                day += daysArray[month]
//            }
//            day += Int(date.split(separator: "-")[1])!
//            return day
//        }
//
//        let aliceDays = Set(returnDay(arriveAlice)...returnDay(leaveAlice))
//        let bobDays = Set(returnDay(arriveBob)...returnDay(leaveBob))
//
//        return aliceDays.intersection(bobDays).count
//    }
//}



