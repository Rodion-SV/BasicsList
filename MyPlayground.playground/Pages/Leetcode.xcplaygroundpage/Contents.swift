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



//https://leetcode.com/problems/find-the-k-beauty-of-a-number/description/
//2269. Find the K-Beauty of a Number
//The k-beauty of an integer num is defined as the number of substrings of num when it is read as a string that meet the following conditions:
//* It has a length of k.
//* It is a divisor of num.
//Given integers num and k, return the k-beauty of num.
//Note:
//* Leading zeros are allowed.
//* 0 is not a divisor of any value.
//A substring is a contiguous sequence of characters in a string.
// 
//Example 1:
//Input: num = 240, k = 2
//Output: 2
//Explanation: The following are the substrings of num of length k:
//- "24" from "240": 24 is a divisor of 240.
//- "40" from "240": 40 is a divisor of 240.
//Therefore, the k-beauty is 2.
//Example 2:
//Input: num = 430043, k = 2
//Output: 2
//Explanation: The following are the substrings of num of length k:
//- "43" from "430043": 43 is a divisor of 430043.
//- "30" from "430043": 30 is not a divisor of 430043.
//- "00" from "430043": 0 is not a divisor of 430043.
//- "04" from "430043": 4 is not a divisor of 430043.
//- "43" from "430043": 43 is a divisor of 430043.
//Therefore, the k-beauty is 2.
// 
//Constraints:
//* 1 <= num <= 109
//* 1 <= k <= num.length (taking num as a string)
//
//
//
//class Solution {
//    func divisorSubstrings(_ num: Int, _ k: Int) -> Int {
//        
//        let s = String(num)
//        
//        var i = 0
//        var res = 0
//        
//        while i <= s.count - k {
//            let n = Int(String(s.dropFirst(i).prefix(k)))!
//            if n != 0, num % n == 0 { res += 1 }
//            i += 1
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
//https://leetcode.com/problems/count-integers-with-even-digit-sum/description/
//2180. Count Integers With Even Digit Sum
//Given a positive integer num, return the number of positive integers less than or equal to num whose digit sums are even.
//The digit sum of a positive integer is the sum of all its digits.
// 
//Example 1:
//Input: num = 4
//Output: 2
//Explanation:
//The only integers less than or equal to 4 whose digit sums are even are 2 and 4.
//Example 2:
//Input: num = 30
//Output: 14
//Explanation:
//The 14 integers less than or equal to 30 whose digit sums are even are
//2, 4, 6, 8, 11, 13, 15, 17, 19, 20, 22, 24, 26, and 28.
// 
//Constraints:
//* 1 <= num <= 1000
//
//
//
//
//class Solution {
//    func countEven(_ num: Int) -> Int {
//        (1...num)
//            .filter { String($0).map({ Int(String($0))! }).reduce(0, +) % 2 == 0 }
//            .count
//    }
//}
//
//
//
//
//
//    func countEven(_ num: Int) -> Int {
//        var x = num
//        var sum = 0
//            
//        while x > 0 {
//            sum += x % 10
//            x = x / 10
//        }
//        
//            
//        if( num % 2 == 0 && sum % 2 == 0 )  {
//            return num/2
//        }
//        
//        return (num-1)/2
//    }
//
//
//
//
//
//class Solution {
//    func countEven(_ num: Int) -> Int {
//        var evenCount = 0
//        
//        if num < 2 {
//            return 0
//        }
//        
//        for i in 2...num {
//            var sum = 0
//            var val = i
//            while val > 0 {
//                sum += val%10
//                val /= 10
//            }
//            
//            if sum % 2 == 0 {
//                evenCount += 1
//            }
//        }
//        
//        return evenCount
//    }
//}
//
//
//
//
//class Solution {
//func countEven(_ num: Int) -> Int {
//    var res = 0
//    
//    for i in 1 ... num {
//        var n = i
//        var sum = 0
//        while n != 0 {
//            sum += n % 10
//            n /= 10
//        }
//        
//        if sum % 2 == 0 {
//            res += 1
//        }
//    }
//    
//    return res
//}
//}
//
//
//
//
//
//
//
//https://leetcode.com/problems/three-divisors/description/
//1952. Three Divisors
//Given an integer n, return true if n has exactly three positive divisors. Otherwise, return false.
//An integer m is a divisor of n if there exists an integer k such that n = k * m.
// 
//Example 1:
//Input: n = 2
//Output: false
//Explantion: 2 has only two divisors: 1 and 2.
//Example 2:
//Input: n = 4
//Output: true
//Explantion: 4 has three divisors: 1, 2, and 4.
// 
//Constraints:
//* 1 <= n <= 104
//
//
//
//class Solution {
//    func isThree(_ n: Int) -> Bool {
//        Array(1...n).filter { n % $0 == 0 }.count == 3
//    }
//}
//
//
//
//class Solution {
//    func isThree(_ n: Int) -> Bool {
//        (1...max(1, n / 2)).filter({ n % $0 == 0 }).count == 2
//    }
//}
//
//
//
//class Solution {
//    func isThree(_ n: Int) -> Bool {
//        var divisors = 0
//        for i in 1...n where n % i == 0 {
//            divisors += 1
//            if divisors > 3 {
//                return false
//            }
//        }
//        return divisors == 3
//    }
//}
//
//
//class Solution {
//    func isThree(_ n: Int) -> Bool {
//        guard n > 1 else { return false }
//        // must be a square of a prime
//        let sqrt = Int(Double(n).squareRoot())
//        guard sqrt * sqrt == n else { return false }
//        return _isPrime(sqrt)
//    }
//    
//    private func _isPrime(_ n: Int) -> Bool {
//        guard n > 3 else { return true }
//        let sqrt = Int(Double(n).squareRoot())
//        for i in 2...sqrt {
//            if n % i == 0 {
//                return false
//            }
//        }
//        return true
//    }
//}
//
//
//
//
//
//
//
//https://leetcode.com/problems/largest-odd-number-in-string/description/
//1903. Largest Odd Number in String
//
//You are given a string num, representing a large integer. Return the largest-valued odd integer (as a string) that is a non-empty substring of num, or an empty string "" if no odd integer exists.
//A substring is a contiguous sequence of characters within a string.
// 
//Example 1:
//Input: num = "52"
//Output: "5"
//Explanation: The only non-empty substrings are "5", "2", and "52". "5" is the only odd number.
//Example 2:
//Input: num = "4206"
//Output: ""
//Explanation: There are no odd numbers in "4206".
//Example 3:
//Input: num = "35427"
//Output: "35427"
//Explanation: "35427" is already an odd number.
// 
//Constraints:
//* 1 <= num.length <= 105
//* num only consists of digits and does not contain any leading zeros.
//
//
//
//class Solution {
//    func largestOddNumber(_ num: String) -> String {
//        guard let i = num.lastIndex(where: { Int(String($0))! % 2 == 1 }) else { return "" }
//        return String(num[...i])
//    }
//}
//
//
//
//class Solution {
//    func largestOddNumber(_ num: String) -> String {
//        var num = num
//        
//        for char in num.reversed() {
//            if (Int(String(char)) ?? 0) % 2 == 0 {
//                num.removeLast()
//                continue
//            }
//            break
//        }
//        
//        return num
//    }
//}
//
//
//
//func largestOddNumber(_ num: String) -> String {
//    let numStartIndex = num.startIndex
//    var numIndex = num.index(before: num.endIndex)
//    while numIndex >= numStartIndex {
//        guard let digit = Int(String(num[numIndex])) else { break }
//        if digit % 2 != 0 {
//            return String(num[...numIndex])
//        }
//        guard numIndex > numStartIndex else { break }
//        numIndex = num.index(before: numIndex)
//    }
//    return ""
//}
//
//
//func largestOddNumber(_ num: String) -> String {
//    var _num = num
//
//    for n in String(num.reversed()) {
//        guard Int(String(n))! & 1 == 0 else { break }
//        _num.removeLast()
//    }
//
//    return _num
//}
//
//
//class Solution {
//    func largestOddNumber(_ num: String) -> String {
//        let num = Array(num), lastOddIndex = num.enumerated().reduce(into: Int(-1), { if (Int($1.1.asciiValue ?? 48) - 48) % 2 == 1 { $0 = $1.0 } })
//        return lastOddIndex >= 0 ? String(num[0...lastOddIndex]) : ""
//    }
//}
//
//
//
//
//
//
//
//https://leetcode.com/problems/sign-of-the-product-of-an-array/description/
//1822. Sign of the Product of an Array
//There is a function signFunc(x) that returns:
//* 1 if x is positive.
//* -1 if x is negative.
//* 0 if x is equal to 0.
//You are given an integer array nums. Let product be the product of all values in the array nums.
//Return signFunc(product).
// 
//Example 1:
//Input: nums = [-1,-2,-3,-4,3,2,1]
//Output: 1
//Explanation: The product of all values in the array is 144, and signFunc(144) = 1
//Example 2:
//Input: nums = [1,5,0,2,-3]
//Output: 0
//Explanation: The product of all values in the array is 0, and signFunc(0) = 0
//Example 3:
//Input: nums = [-1,1,-1,1,-1]
//Output: -1
//Explanation: The product of all values in the array is -1, and signFunc(-1) = -1
// 
//Constraints:
//* 1 <= nums.length <= 1000
//* -100 <= nums[i] <= 100
//
//
//Explanation
//1. Check if nums array contains zero. 0 * n = 0
//2. Find how many negative numbers in array
//3. if its even: -2 * -2 = 4. So result will be 1.
//4. if its odd: -2 * -2 * -1 = -4. In this way result will be -1.
//
//class Solution {
//    func arraySign(_ nums: [Int]) -> Int {
//        guard !nums.contains(0) else { return 0 }
//        return nums.filter { $0 < 0 }.count % 2 == 0 ? 1 : -1
//    }
//}
//
//
//
//https://leetcode.com/problems/calculate-money-in-leetcode-bank/description/
//1716. Calculate Money in Leetcode Bank
//Hercy wants to save money for his first car. He puts money in the Leetcode bank every day.
//He starts by putting in $1 on Monday, the first day. Every day from Tuesday to Sunday, he will put in $1 more than the day before. On every subsequent Monday, he will put in $1 more than the previous Monday.
//Given n, return the total amount of money he will have in the Leetcode bank at the end of the nth day.
// 
//Example 1:
//Input: n = 4
//Output: 10
//Explanation: After the 4th day, the total is 1 + 2 + 3 + 4 = 10.
//Example 2:
//Input: n = 10
//Output: 37
//Explanation: After the 10th day, the total is (1 + 2 + 3 + 4 + 5 + 6 + 7) + (2 + 3 + 4) = 37. Notice that on the 2nd Monday, Hercy only puts in $2.
//Example 3:
//Input: n = 20
//Output: 96
//Explanation: After the 20th day, the total is (1 + 2 + 3 + 4 + 5 + 6 + 7) + (2 + 3 + 4 + 5 + 6 + 7 + 8) + (3 + 4 + 5 + 6 + 7 + 8) = 96.
// 
//Constraints:
//* 1 <= n <= 1000
//
//
//
//
//class Solution {
//    func totalMoney(_ n: Int) -> Int {
//        var money = 0
//        for i in 0 ..< n {
//            money += i % 7 + i / 7 + 1
//        }
//        return money
//    }
//}




//https://leetcode.com/problems/number-of-days-between-two-dates/description/
//1360. Number of Days Between Two Dates
//
//Write a program to count the number of days between two dates.
//The two dates are given as strings, their format is YYYY-MM-DD as shown in the examples.
// 
//Example 1:
//Input: date1 = "2019-06-29", date2 = "2019-06-30"
//Output: 1
//Example 2:
//Input: date1 = "2020-01-15", date2 = "2019-12-31"
//Output: 15
// 
//Constraints:
//* The given dates are valid dates between the years 1971 and 2100.
//
//
//
//class Solution {
//    
//    private static let ms = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//    
//    private static func l(_ y: Int) -> Int {
//        guard y % 400 != 0 else { return 1 }
//        guard y % 100 != 0, y % 4 == 0 else { return 0 }
//        return 1
//    }
//    
//    private static func l(_ y: Int, _ m: Int) -> Int {
//        guard m > 2 else { return 0 }
//        return l(y)
//    }
//    
//    private static func d(_ date: String) -> Int {
//        let cs = date
//            .components(separatedBy: "-")
//            .map { Int($0)! }
//        
//        return cs[2]
//            + l(cs[0], cs[1])
//            + ms.prefix(cs[1] - 1).reduce(0, +)
//            + (1970..<cs[0]).map({ 365 + l($0) }).reduce(0, +)
//    }
//    
//    func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
//        abs(Solution.d(date1) - Solution.d(date2))
//    }
//}
//
//
//
//
//
//import Foundation
//class Solution {
//    func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
//        let d1 = Solution.dateFromString(string: date1, format: "yyyy-MM-dd")
//        let d2 = Solution.dateFromString(string: date2, format: "yyyy-MM-dd")
//        var difference = d2.timeIntervalSince(d1)
//        if difference < 0 {
//            difference = d1.timeIntervalSince(d2)
//        }
//        return Int(difference/86400)
//    }
//    class func dateFromString(string: String, format: String) -> Date {
//        let formatter: DateFormatter = DateFormatter()
//        formatter.calendar = Calendar(identifier: .gregorian)
//        formatter.dateFormat = format
//        return formatter.date(from: string)!
//    }
//}
//
//
//class Solution {
//func isLeapYear(_ year: Int) -> Bool
//{
//    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
//}
//
//func countOfDaysFrom1971(day: Int, month: Int, year: Int) -> Int {
//    var days = [0,31,28,31,30,31,30,31,31,30,31,30,31]
//    var dayCount = day
//
//    for year in 1971..<year {
//        dayCount += isLeapYear(year) ? 366 : 365
//    }
//
//    if isLeapYear(year) { days[2] = 29 }
//    for month in 1..<month {
//        dayCount += days[month]
//    }
//
//    return dayCount
//}
//
//func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
//    let date1Components = date1.components(separatedBy: "-")
//    let date2Components = date2.components(separatedBy: "-")
//
//    let days1 = countOfDaysFrom1971(day: Int(date1Components[2])!, month: Int(date1Components[1])!, year: Int(date1Components[0])!)
//    let days2 = countOfDaysFrom1971(day: Int(date2Components[2])!, month: Int(date2Components[1])!, year: Int(date2Components[0])!)
//    return abs(days1 - days2)
//}
//
//}
//
//
//
//class Solution {
//    func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
//        
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd"
//        
//        let firstDateTime = formatter.date(from: date1)!
//        let secondDateTime = formatter.date(from: date2)!
//
//        let answer = secondDateTime.timeIntervalSince(firstDateTime)/60/60/24
//
//        return abs(Int(answer))
//    }
//}
//
//
//
//
//class Solution {
//    func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
//
//        func isLeapYear(_ year: Int) -> Bool {
//            return year % 4 == 0 ? (year % 100 == 0 ? (year % 400 == 0 ? true : false) : true) : false
//        }
//
//        func daysSince1970(_ date: String) -> Int {
//            let dateParts = date.split(separator: "-"), year = Int(dateParts[0]) ?? 0, month = Int(dateParts[1]) ?? 0, day = Int(dateParts[2]) ?? 0
//            var days: Int = day
//            for i in 1..<month {
//                switch i {
//                    case 1, 3, 5, 7, 8, 10, 12: days += 31
//                    case 4, 6, 9, 11: days += 30
//                    case 2: days += isLeapYear(year) ? 29 : 28
//                    default: days += 0
//                }
//            }
//            for i in 1971..<year {
//                days += isLeapYear(i) ? 366 : 365
//            }
//            return days
//        }
//
//        return abs(daysSince1970(date1) - daysSince1970(date2))
//
//    }
//}
//
//
//
//
//
//https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers/description/
//1317. Convert Integer to the Sum of Two No-Zero Integers
//No-Zero integer is a positive integer that does not contain any 0 in its decimal representation.
//Given an integer n, return a list of two integers [a, b] where:
//* a and b are No-Zero integers.
//* a + b = n
//The test cases are generated so that there is at least one valid solution. If there are many valid solutions, you can return any of them.
// 
//Example 1:
//Input: n = 2
//Output: [1,1]
//Explanation: Let a = 1 and b = 1.
//Both a and b are no-zero integers, and a + b = 2 = n.
//Example 2:
//Input: n = 11
//Output: [2,9]
//Explanation: Let a = 2 and b = 9.
//Both a and b are no-zero integers, and a + b = 9 = n.
//Note that there are other valid answers as [8, 3] that can be accepted.
// 
//Constraints:
//* 2 <= n <= 104
//
//
//
//
//
//class Solution {
//func getNoZeroIntegers(_ n: Int) -> [Int] {
//    (1...(n/2)).lazy.filter { !"\($0)\(n-$0)".contains("0") }.lazy.map { [$0, n-$0] }.lazy.first!
//}
//}
//
//
//
//
//class Solution {
//    func getNoZeroIntegers(_ n: Int) -> [Int] {
//        
//        var i = 1
//        
//        while i <= n / 2 {
//            if !String(i).contains("0") && !String(n - i).contains("0") {
//                return [i, n - i]
//            }
//            i += 1
//        }
//        
//        return []
//    }
//}
//
//
//
//
//
//
//
//https://leetcode.com/problems/day-of-the-week/
//1185. Day of the Week
//Given a date, return the corresponding day of the week for that date.
//The input is given as three integers representing the day, month and year respectively.
//Return the answer as one of the following values {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}.
// 
//Example 1:
//Input: day = 31, month = 8, year = 2019
//Output: "Saturday"
//Example 2:
//Input: day = 18, month = 7, year = 1999
//Output: "Sunday"
//Example 3:
//Input: day = 15, month = 8, year = 1993
//Output: "Sunday"
// 
//Constraints:
//* The given dates are valid dates between the years 1971 and 2100.
//
//
//
///* Create a Date from the components */
//let date = DateComponents(calendar: Calendar.current, year: year, month: month, day: day).date!
//// Create a formatter
//let dateFormatter = DateFormatter()
//// Set the format to the wide name of the day of the week
//dateFormatter.dateFormat = "EEEE"
//// Return the string
//return dateFormatter.string(from: date)
//
//
//class Solution {
//    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
//        var y = year
//        let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
//        
//        // Using Tomohiko Sakamoto's algorithm
//        let t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
//        y -= month < 3 ? 1 : 0
//        let dayIndex = (y + y/4 - y/100 + y/400 + t[month-1] + day) % 7
//        return days[dayIndex]
//    }
//}
//
//
//class Solution {
//    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
//
//        func isLeapYear(_ year: Int) -> Bool {
//            return year % 4 == 0 ? (year % 100 == 0 ? (year % 400 == 0 ? true : false) : true) : false
//        }
//
//        func daysInYear(_ year: Int) -> Int {
//            return isLeapYear(year) ? 366 : 365
//        }
//
//        func daysInMonth(_ year: Int, _ month: Int) -> Int {
//            switch month {
//                case 1, 3, 5, 7, 8, 10, 12: return 31
//                case 4, 6, 9, 11: return 30
//                case 2: return isLeapYear(year) ? 29 : 28
//                default: return 0
//            }
//        }
//
//        let daysOfTheWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
//        var days: Int = day
//        for i in 1..<month {
//            days += daysInMonth(year, i)
//        }
//        for i in 1971..<year {
//            days += daysInYear(i)
//        }
//        return daysOfTheWeek[(4 + days) % 7]
//    }
//}



//https://leetcode.com/problems/count-distinct-numbers-on-board/
//2549. Count Distinct Numbers on Board
//You are given a positive integer n, that is initially placed on a board. Every day, for 109 days, you perform the following procedure:
//* For each number x present on the board, find all numbers 1 <= i <= n such that x % i == 1.
//* Then, place those numbers on the board.
//Return the number of distinct integers present on the board after 109 days have elapsed.
//Note:
//* Once a number is placed on the board, it will remain on it until the end.
//* % stands for the modulo operation. For example, 14 % 3 is 2.
// 
//Example 1:
//Input: n = 5
//Output: 4
//Explanation: Initially, 5 is present on the board.
//The next day, 2 and 4 will be added since 5 % 2 == 1 and 5 % 4 == 1.
//After that day, 3 will be added to the board because 4 % 3 == 1.
//At the end of a billion days, the distinct numbers on the board will be 2, 3, 4, and 5.
//Example 2:
//Input: n = 3
//Output: 2
//Explanation:
//Since 3 % 2 == 1, 2 will be added to the board.
//After a billion days, the only two distinct numbers on the board are 2 and 3.
// 
//Constraints:
//* 1 <= n <= 100
//
//
//
//
//class Solution {
//    func distinctIntegers(_ n: Int) -> Int {
//        max(n-1, 1)
//    }
//}
//
//
//
//class Solution {
//    func distinctIntegers(_ n: Int) -> Int {
//        if (n == 1)
//        {
//            return 1
//        }
//        else
//        {
//            return n-1
//        }
//    }
//}
//
//
//class Solution {
//    func distinctIntegers(_ n: Int) -> Int {
//        
//        var n = n
//        var temp: Set<Int> = [n]
//        
//        while n > 0 {
//            
//            for item in temp {
//                for i in 1...item {
//                    if n % i == 1 {
//                        temp.insert(i)
//                    }
//                }
//            }
//            
//            n -= 1
//            
//  
//            
//        }
//        
//        return temp.count
//        
//    }
//}
//
//
//
//
//
//
//
//https://leetcode.com/problems/maximum-difference-by-remapping-a-digit/
//2566. Maximum Difference by Remapping a Digit
//You are given an integer num. You know that Danny Mittal will sneakily remap one of the 10 possible digits (0 to 9) to another digit.
//Return the difference between the maximum and minimum values Danny can make by remapping exactly one digit in num.
//Notes:
//* When Danny remaps a digit d1 to another digit d2, Danny replaces all occurrences of d1 in num with d2.
//* Danny can remap a digit to itself, in which case num does not change.
//* Danny can remap different digits for obtaining minimum and maximum values respectively.
//* The resulting number after remapping can contain leading zeroes.
//* We mentioned "Danny Mittal" to congratulate him on being in the top 10 in Weekly Contest 326.
// 
//Example 1:
//Input: num = 11891
//Output: 99009
//Explanation:
//To achieve the maximum value, Danny can remap the digit 1 to the digit 9 to yield 99899.
//To achieve the minimum value, Danny can remap the digit 1 to the digit 0, yielding 890.
//The difference between these two numbers is 99009.
//Example 2:
//Input: num = 90
//Output: 99
//Explanation:
//The maximum value that can be returned by the function is 99 (if 0 is replaced by 9) and the minimum value that can be returned by the function is 0 (if 9 is replaced by 0).
//Thus, we return 99.
// 
//Constraints:
//* 1 <= num <= 108
//
//
//class Solution {
//    func minMaxDifference(_ num: Int) -> Int {
//        let maxNum = getMaxValueToReplace("\(num)", num)
//        let minNum = getMinValueToReplace("\(num)", num)
//        return maxNum - minNum
//    }
//
//    func getMaxValueToReplace(_ str: String, _ num: Int) -> Int {
//        guard let idx = str.firstIndex(where: { $0 != "9" } ) else { return num }
//        return Int(str.replacingOccurrences(of: "\(str[idx])", with: "9"))!
//    }
//
//    func getMinValueToReplace(_ str: String, _ num: Int) -> Int {
//        guard let idx = str.firstIndex(where: { $0 != "0" } ) else { return num }
//        return Int(str.replacingOccurrences(of: "\(str[idx])", with: "0"))!
//    }
//}
//
//
//
//
//
//
//
//https://leetcode.com/problems/split-with-minimum-sum/
//2578. Split With Minimum Sum
//Given a positive integer num, split it into two non-negative integers num1 and num2 such that:
//* The concatenation of num1 and num2 is a permutation of num.
//    * In other words, the sum of the number of occurrences of each digit in num1 and num2 is equal to the number of occurrences of that digit in num.
//* num1 and num2 can contain leading zeros.
//Return the minimum possible sum of num1 and num2.
//Notes:
//* It is guaranteed that num does not contain any leading zeros.
//* The order of occurrence of the digits in num1 and num2 may differ from the order of occurrence of num.
// 
//Example 1:
//Input: num = 4325
//Output: 59
//Explanation: We can split 4325 so that num1 is 24 and num2 is 35, giving a sum of 59. We can prove that 59 is indeed the minimal possible sum.
//Example 2:
//Input: num = 687
//Output: 75
//Explanation: We can split 687 so that num1 is 68 and num2 is 7, which would give an optimal sum of 75.
// 
//Constraints:
//* 10 <= num <= 109
//
//class Solution {
//    func splitNum(_ n: Int) -> Int {
//        "\(n)".sorted().enumerated().reduce(into:["",""]) { $0[$1.0&1]+=[$1.1]}.reduce(0) {$0+Int($1)!}
//    }
//}
//
//
//class Solution {
//    func splitNum(_ num: Int) -> Int {
//        "\(num)"  // convert `num` to string
//         .sorted() // sort digits ascending, we want two numbers composed of lowest to highest digits
//         .enumerated()
//         .reduce(into: ["", ""]) { arr, tuple in  // split every other digit into two strings
//            let (index, ch) = tuple
//            arr[index & 1].append(ch)
//         }
//        .map { Int($0)! } // convert two string to two ints
//        .reduce(0,+)      // add both values together
//    }
//}
//
//
//
//class Solution {
//    func splitNum(_ num: Int) -> Int {
//    
//        // 1: Convern to digits (Int -> String -> [Int]) and filter 'zeros'
//        let digits = "\(num)".compactMap({ Int("\($0)") }).filter({ $0 != 0 }).sorted()
//        let enumeratedDigits = digits.lazy.enumerated()
//        
//        // 2: Filter(select) Even & Odd indeses in 'digits' array and convert final numbers to Int value
//        let number = digits.lazy.enumerated().reduce(into: (even: "", odd: "")) {
//            $1.offset.isMultiple(of: 2) ? ($0.even.append("\($1.element)")) : ($0.odd.append("\($1.element)"))
//        }
//        
//        // 3: Sum even and odd sums
//        return (Int(number.even) ?? 0) + (Int(number.odd) ?? 0)
//    }
//}
//
//
//
//
//
//
//https://leetcode.com/problems/pass-the-pillow/
//2582. Pass the Pillow
//
//There are n people standing in a line labeled from 1 to n. The first person in the line is holding a pillow initially. Every second, the person holding the pillow passes it to the next person standing in the line. Once the pillow reaches the end of the line, the direction changes, and people continue passing the pillow in the opposite direction.
//* For example, once the pillow reaches the nth person they pass it to the n - 1th person, then to the n - 2th person and so on.
//Given the two positive integers n and time, return the index of the person holding the pillow after time seconds.
// 
//Example 1:
//Input: n = 4, time = 5
//Output: 2
//Explanation: People pass the pillow in the following way: 1 -> 2 -> 3 -> 4 -> 3 -> 2.
//Afer five seconds, the pillow is given to the 2nd person.
//Example 2:
//Input: n = 3, time = 2
//Output: 3
//Explanation: People pass the pillow in the following way: 1 -> 2 -> 3.
//Afer two seconds, the pillow is given to the 3rd person.
// 
//Constraints:
//* 2 <= n <= 1000
//* 1 <= time <= 1000
//
//
//class Solution {
//    func passThePillow(_ n: Int, _ time: Int) -> Int {
//        time/(n-1) & 1 == 0 ? 1 + time % (n-1) : n - time % (n-1)
//    }
//}
//
//
//
//class Solution {
//    func passThePillow(_ n: Int, _ time: Int) -> Int {
//        // every calc here uses `n-1` instead of `n`, since were counting number
//        // of jumps from leftmost person to rightmost person; counting jumps, not people, so `n-1`
//        time/(n-1) & 1 == 0  // is pillow traveling toward the right (...&1 == 0) or left (...&1 == 1)
//            ? 1 + (time % (n-1))  // toward the right: add 1 (since one-based index) to the modulo
//            : n - (time % (n-1))  // toward the left: subtract modulo from `n`
//    }
//}
//
//
//
//
//
//Approach
//1. Create a variable t to store the time
//2. Create a variable i to store the current position
//3. Create a variable flag to store the direction
//4. Loop until t is less than time
//5. If flag is false
//6. Increment i by 1
//7. If i is equal to n
//8. Set flag to true
//9. Else
//10. Decrement i by 1
//11. If i is equal to 1
//12. Set flag to false
//13. Increment t by 1
//14. Return i
//Complexity
//* Time complexity: O(n)
//* Space complexity: O(1)
//Code
//class Solution {
//    func passThePillow(_ n: Int, _ time: Int) -> Int {
//        var t=0,i=1;
//        var flag = false;
//        while(t<time){
//            if(!flag){
//                i+=1;
//                if(i==n){
//                    flag = true;
//                }
//            }
//            else{
//                i-=1;
//                if(i==1){
//                    flag = false;
//                }
//            }
//            t+=1;
//        }
//        return i;
//    }
//}
//
//
//
//
//
//https://leetcode.com/problems/distribute-money-to-maximum-children/
//2591. Distribute Money to Maximum Children
//You are given an integer money denoting the amount of money (in dollars) that you have and another integer children denoting the number of children that you must distribute the money to.
//You have to distribute the money according to the following rules:
//* All money must be distributed.
//* Everyone must receive at least 1 dollar.
//* Nobody receives 4 dollars.
//Return the maximum number of children who may receive exactly 8 dollars if you distribute the money according to the aforementioned rules. If there is no way to distribute the money, return -1.
// 
//Example 1:
//Input: money = 20, children = 3
//Output: 1
//Explanation:
//The maximum number of children with 8 dollars will be 1. One of the ways to distribute the money is:
//- 8 dollars to the first child.
//- 9 dollars to the second child.
//- 3 dollars to the third child.
//It can be proven that no distribution exists such that number of children getting 8 dollars is greater than 1.
//Example 2:
//Input: money = 16, children = 2
//Output: 2
//Explanation: Each child can be given 8 dollars.
// 
//Constraints:
//* 1 <= money <= 200
//* 2 <= children <= 30
//
//
//class Solution {
//    func distMoney(_ m: Int, _ c: Int) -> Int {
//        m<c ? -1 : min((m-c)/7, c-1) + (c*8==m ? 1:0) + (((c-1)*8+4)==m ? -1:0)
//    }
//}
//
//
//class Solution {
//    func distMoney(_ m: Int, _ c: Int) -> Int {
//        m<c ? -1 : // FAIL: not enough to give each child $1
//        min((m-c)/7, c-1) + // give each child $1 (m-c), then distribute $7 chunks up to all but last child
//        (c*8==m ? 1:0) + // if money == children*8, then give last child full $8
//        (((c-1)*8+4)==m ? -1:0) // if all-but-last children have $8 and last has $4, remove second-to-last from result
//    }
//}
//
//
//class Solution {
//    func distMoney(_ m: Int, _ c: Int) -> Int {
//        guard m >= c
//        // case 1: not enough money to give each child $1
//        else { return -1 }
//        
//        guard m >= 8 + (c-1)
//        // case 2: not enough money to give one child $8 and other children $1
//        else { return 0 }
//        
//        guard c*8 > m
//        // case 3: every child can get at least $8
//        else { return c + (m > c*8 ? -1 : 0) }  // exclude last child, if last child more than $8
//        
//        guard m - (c-1)*8 <= 0
//        // case 4: every child except last can get $8
//        else { return m/8 + (m%8 == 4 ? -1 : 0) } // exclude second-to-last, if last has $4
//
//        // case 5: more than one child cannot get $8
//        return (m-c) / 7 // give every child $1, then how many children can get another $7?
//    }
//}
//
//
//class Solution {
//    func distMoney(_ money: Int, _ children: Int) -> Int {
//
//        guard children == 0 || money >= children else { return -1 }
//        guard money >= children + 7 else { return 0 }
//        
//        func weCan(_ k: Int) -> Bool {
//            var restMoney = money - k * 8
//            var restChildren = children - k
//
//            switch (restMoney, restChildren) {
//            case (..<0, _): return false
//            case (0, 0): return true
//            case (1..., 0): return false
//            case (4, 1): return false
//            default: return restMoney >= restChildren
//            }
//        }
//
//        var l = 0
//        var r = children
//
//        while l <= r {
//            let m = (l + r) / 2
//            if weCan(m) { l = m + 1 }
//            else { r = m - 1 }
//        }
//
//        return l - 1
//    }
//}



//https://leetcode.com/problems/k-items-with-the-maximum-sum/
//2600. K Items With the Maximum Sum
//There is a bag that consists of items, each item has a number 1, 0, or -1 written on it.
//You are given four non-negative integers numOnes, numZeros, numNegOnes, and k.
//The bag initially contains:
//* numOnes items with 1s written on them.
//* numZeroes items with 0s written on them.
//* numNegOnes items with -1s written on them.
//We want to pick exactly k items among the available items. Return the maximum possible sum of numbers written on the items.
// 
//Example 1:
//Input: numOnes = 3, numZeros = 2, numNegOnes = 0, k = 2
//Output: 2
//Explanation: We have a bag of items with numbers written on them {1, 1, 1, 0, 0}. We take 2 items with 1 written on them and get a sum in a total of 2.
//It can be proven that 2 is the maximum possible sum.
//Example 2:
//Input: numOnes = 3, numZeros = 2, numNegOnes = 0, k = 4
//Output: 3
//Explanation: We have a bag of items with numbers written on them {1, 1, 1, 0, 0}. We take 3 items with 1 written on them, and 1 item with 0 written on it, and get a sum in a total of 3.
//It can be proven that 3 is the maximum possible sum.
// 
//Constraints:
//* 0 <= numOnes, numZeros, numNegOnes <= 50
//* 0 <= k <= numOnes + numZeros + numNegOnes
//
//
//
//
//class Solution {
//    func kItemsWithMaximumSum(_ numOnes: Int, _ numZeros: Int, _ numNegOnes: Int, _ k: Int) -> Int {
//        
//        var res = 0
//        var rem = k
//
//        res += min(numOnes, rem)
//        rem -= min(numOnes, rem)
//
//        rem -= min(numZeros, rem)
//
//        res -= min(numNegOnes, rem)
//        rem -= min(numNegOnes, rem)
//
//        return res
//    }
//}
//
//
//
//https://leetcode.com/problems/remove-duplicates-from-sorted-array/
//26. Remove Duplicates from Sorted Array
//Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
//Consider the number of unique elements of nums be k, to get accepted, you need to do the following things:
//* Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
//* Return k.
//Custom Judge:
//The judge will test your solution with the following code:
//int[] nums = [...]; // Input array
//int[] expectedNums = [...]; // The expected answer with correct length
//
//int k = removeDuplicates(nums); // Calls your implementation
//
//assert k == expectedNums.length;
//for (int i = 0; i < k; i++) {
//    assert nums[i] == expectedNums[i];
//}
//If all assertions pass, then your solution will be accepted.
// 
//Example 1:
//Input: nums = [1,1,2]
//Output: 2, nums = [1,2,_]
//Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
//It does not matter what you leave beyond the returned k (hence they are underscores).
//Example 2:
//Input: nums = [0,0,1,1,1,2,2,3,3,4]
//Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
//Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
//It does not matter what you leave beyond the returned k (hence they are underscores).
// 
//Constraints:
//* 1 <= nums.length <= 3 * 104
//* -100 <= nums[i] <= 100
//* nums is sorted in non-decreasing order.
//
//
//class Solution {
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//        let len = nums.count
//        guard len > 1 else { return len }
//        var idx = 0
//        for n in nums where n != nums[idx] {
//            idx += 1
//            nums[idx] = n
//        }
//        return idx + 1
//    }
//}
//
//
//
//import XCTest
//
//class Tests: XCTestCase {
//    
//    private let solution = Solution()
//    
//    /// Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
//    /// It does not matter what you leave beyond the returned k (hence they are underscores).
//    func test0() {
//        var array = [1,1,2]
//        solution.removeDuplicates(&array)
//        XCTAssertEqual(2, [1,2].count)
//    }
//    
//    /// Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
//    /// It does not matter what you leave beyond the returned k (hence they are underscores).
//    func test1() {
//        var array = [0,0,1,1,1,2,2,3,3,4]
//        solution.removeDuplicates(&array)
//        XCTAssertEqual(5, [0,1,2,3,4].count)
//    }
//}
//
//Tests.defaultTestSuite.run()
//
//
//
//
//class Solution {
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//        nums = Array(Set(nums))
//        nums.sort{$0 < $1}
//        return nums.count
//    }
//}



//https://leetcode.com/problems/shortest-completing-word/
//748. Shortest Completing Word
//
//Given a string licensePlate and an array of strings words, find the shortest completing word in words.
//A completing word is a word that contains all the letters in licensePlate. Ignore numbers and spaces in licensePlate, and treat letters as case insensitive. If a letter appears more than once in licensePlate, then it must appear in the word the same number of times or more.
//For example, if licensePlate = "aBc 12c", then it contains letters 'a', 'b' (ignoring case), and 'c' twice. Possible completing words are "abccdef", "caaacab", and "cbca".
//Return the shortest completing word in words. It is guaranteed an answer exists. If there are multiple shortest completing words, return the first one that occurs in words.
//
//Example 1:
//Input: licensePlate = "1s3 PSt", words = ["step","steps","stripe","stepple"]
//Output: "steps"
//Explanation: licensePlate contains letters 's', 'p', 's' (ignoring case), and 't'.
//"step" contains 't' and 'p', but only contains 1 's'.
//"steps" contains 't', 'p', and both 's' characters.
//"stripe" is missing an 's'.
//"stepple" is missing an 's'.
//Since "steps" is the only word containing all the letters, that is the answer.
//Example 2:
//Input: licensePlate = "1s3 456", words = ["looks","pest","stew","show"]
//Output: "pest"
//Explanation: licensePlate only contains the letter 's'. All the words contain 's', but among these "pest", "stew", and "show" are shortest. The answer is "pest" because it is the word that appears earliest of the 3.
//
//Constraints:
//* 1 <= licensePlate.length <= 7
//* licensePlate contains digits, letters (uppercase or lowercase), or space ' '.
//* 1 <= words.length <= 1000
//* 1 <= words[i].length <= 15
//* words[i] consists of lower case English letters.
//
//
//class Solution {
//    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
//        var sL: String = "" // lowercased sorted letters from licensePlate
//        for char in licensePlate.lowercased().sorted() {
//            if char.isLetter { sL.append(char) }
//        }
//        let eL = sL.endIndex
//        var results: [String] = [] // suitable words
//        var minLength: Int = Int.max // minimum length of suitable words
//        for word in words {
//            let sW = word.sorted() // sorted letters from word
//            let eW = sW.endIndex
//            var iL = sL.startIndex
//            var iW = sW.startIndex
//            while iL < eL && iW < eW { // looking for letters from licensePlate in word
//                if sL[iL] == sW[iW] { sL.formIndex(after: &iL) }
//                sW.formIndex(after: &iW)
//            }
//            if iL == eL { // all letters found
//                results.append(word)
//                if word.count < minLength { minLength = word.count }
//            }
//        }
//        for result in results { // return first suitable word with minimum length
//            if result.count == minLength { return result }
//        }
//        return ""
//    }
//}
//
//
//
//
//https://leetcode.com/problems/goat-latin/description/
//824. Goat Latin
//
//You are given a string sentence that consist of words separated by spaces. Each word consists of lowercase and uppercase letters only.
//We would like to convert the sentence to "Goat Latin" (a made-up language similar to Pig Latin.) The rules of Goat Latin are as follows:
//* If a word begins with a vowel ('a', 'e', 'i', 'o', or 'u'), append "ma" to the end of the word.
//    * For example, the word "apple" becomes "applema".
//* If a word begins with a consonant (i.e., not a vowel), remove the first letter and append it to the end, then add "ma".
//    * For example, the word "goat" becomes "oatgma".
//* Add one letter 'a' to the end of each word per its word index in the sentence, starting with 1.
//    * For example, the first word gets "a" added to the end, the second word gets "aa" added to the end, and so on.
//Return the final sentence representing the conversion from sentence to Goat Latin.
//
//Example 1:
//Input: sentence = "I speak Goat Latin"
//Output: "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
//Example 2:
//Input: sentence = "The quick brown fox jumped over the lazy dog"
//Output: "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
//
//Constraints:
//* 1 <= sentence.length <= 150
//* sentence consists of English letters and spaces.
//* sentence has no leading or trailing spaces.
//* All the words in sentence are separated by a single space.
//
//
//class Solution {
//    func toGoatLatin(_ sentence: String) -> String {
//        let vowel: Set<Character> = [
//            "a", "e", "i", "o", "u",
//            "A", "E", "I", "O", "U",
//        ]
//
//        var moddifiedWords = [String]()
//
//        for (i, word) in sentence.split(separator: " ").enumerated() {
//            var moddified = word
//            let first = word.first!
//
//            if !vowel.contains(first) {
//                moddified = word.dropFirst()
//                moddified.append(first)
//            }
//            moddified.append(contentsOf: "ma")
//            moddified.append(contentsOf: Array(repeating: "a", count: i + 1))
//
//            moddifiedWords.append(String(moddified))
//        }
//
//        return moddifiedWords.joined(separator: " ")
//    }
//}
//
//
//class Solution {
//    func toGoatLatin(_ sentence: String) -> String {
//        var vowels: Set<Character> = ["a", "e", "i", "o", "u"]
//        return sentence.components(separatedBy: " ").reduce(into: [String]()) {
//            var temp = ""
//            if vowels.contains(($1.first?.lowercased())!) {
//                temp += $1 + "ma"
//            } else {
//                temp += $1.dropFirst() + String($1.first!) + "ma"
//            }
//            temp += String(repeating: "a", count: $0.count + 1)
//            $0 += [temp]
//        }.joined(separator: " ")
//    }
//}
//
//
//
//
//
//https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
//1614. Maximum Nesting Depth of the Parentheses
//A string is a valid parentheses string (denoted VPS) if it meets one of the following:
//* It is an empty string "", or a single character not equal to "(" or ")",
//* It can be written as AB (A concatenated with B), where A and B are VPS's, or
//* It can be written as (A), where A is a VPS.
//We can similarly define the nesting depth depth(S) of any VPS S as follows:
//* depth("") = 0
//* depth(C) = 0, where C is a string with a single character not equal to "(" or ")".
//* depth(A + B) = max(depth(A), depth(B)), where A and B are VPS's.
//* depth("(" + A + ")") = 1 + depth(A), where A is a VPS.
//For example, "", "()()", and "()(()())" are VPS's (with nesting depths 0, 1, and 2), and ")(" and "(()" are not VPS's.
//Given a VPS represented as string s, return the nesting depth of s.
//
//Example 1:
//Input: s = "(1+(2*3)+((8)/4))+1"
//Output: 3
//Explanation: Digit 8 is inside of 3 nested parentheses in the string.
//Example 2:
//Input: s = "(1)+((2))+(((3)))"
//Output: 3
//
//Constraints:
//* 1 <= s.length <= 100
//* s consists of digits 0-9 and characters '+', '-', '*', '/', '(', and ')'.
//* It is guaranteed that parentheses expression s is a VPS.
//
//class Solution {
//    func maxDepth(_ s: String) -> Int {
//        guard !s.isEmpty else {
//            return 0
//        }
//
//        var sArray = Array(s)
//        var stack = [Character]()
//        var maxDep = 0
//        var count = 0
//        for char in sArray {
//            if char == "(" {
//                stack.append(char)
//                count += 1
//                maxDep = max(maxDep, count)
//            } else if char == ")" {
//                if !stack.isEmpty {
//                    stack.popLast()
//                    count -= 1
//                }
//            }
//        }
//        return maxDep
//    }
//}
//
//
//
//
//
//
//https://leetcode.com/problems/long-pressed-name/
//925. Long Pressed Name
//Your friend is typing his name into a keyboard. Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.
//You examine the typed characters of the keyboard. Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.
//
//Example 1:
//Input: name = "alex", typed = "aaleex"
//Output: true
//Explanation: 'a' and 'e' in 'alex' were long pressed.
//Example 2:
//Input: name = "saeed", typed = "ssaaedd"
//Output: false
//Explanation: 'e' must have been pressed twice, but it was not in the typed output.
//
//Constraints:
//* 1 <= name.length, typed.length <= 1000
//* name and typed consist of only lowercase English letters.
//
//
//class Solution {
//    func isLongPressedName(_ name: String, _ typed: String) -> Bool {
//        /// ni: name index
//        /// ti: typed index
//        var ni = 0, ti = 0
//
//        /// nl: name char list
//        /// tl: typed char list
//        let nl = Array(name), tl = Array(typed)
//
//        while ni < nl.count, ti < tl.count {
//            if nl[ni] == tl[ti] {
//                ni += 1
//                ti += 1
//            } else {
//                while ti > 0, ti < tl.count, tl[ti] == tl[ti - 1] {
//                    ti += 1
//                }
//
//                if ti >= tl.count { return false}
//                if nl[ni] != tl[ti] { return false }
//            }
//        }
//        while ti < tl.count, tl[ti] == tl[ti - 1] { ti += 1 }
//        return ni == nl.count && ti == tl.count
//    }
//}
//
//
//class Solution {
//    func isLongPressedName(_ name: String, _ typed: String) -> Bool {
//        var left = 0
//        var right = 0
//        var name = Array(name)
//        var typed = Array(typed)
//
//        while left < name.count && right < typed.count {
//            if name[left] != typed[right] {
//                return false
//            }
//
//            let lhs = calculate(name, left)
//            let rhs = calculate(typed, right)
//
//            if rhs < lhs {
//                return false
//            }
//
//            left += lhs
//            right += rhs
//        }
//
//        if left < name.count || right < typed.count {
//            return false
//        }
//
//        return true
//    }
//
//    private func calculate(_ word: [Character], _ index: Int) -> Int {
//        var char = word[index]
//        var count = 0
//
//        while index + count < word.count && word[index + count] == char {
//            count += 1
//        }
//
//        return count
//    }
//}


//https://leetcode.com/problems/find-common-characters/
//1002. Find Common Characters
//Given a string array words, return an array of all characters that show up in all strings within the words (including duplicates). You may return the answer in any order.
//
//
//
//Example 1:
//
//Input: words = ["bella","label","roller"]
//Output: ["e","l","l"]
//Example 2:
//
//Input: words = ["cool","lock","cook"]
//Output: ["c","o"]
//
//
//Constraints:
//
//1 <= words.length <= 100
//1 <= words[i].length <= 100
//words[i] consists of lowercase English letters.
//
//
//class Solution {
//    func commonChars(_ A: [String]) -> [String] {
//        return A.reduce(into: [String: Int](), { for s in $1.reduce(into: [Character: Int](), { $0[$1] = $0[$1, default: 0] + 1 }).reduce(into: [String](), { for i in 1...$1.1 { $0.append(String(Array(repeating: $1.0, count: i))) } }) { $0[s] = $0[s, default: 0] + 1 } }).reduce(into: [String](), { if $1.1 == A.count { $0.append(String($1.0.first!)) } })
//    }
//}
//
//
//class Solution {
//    func commonChars(_ words: [String]) -> [String] {
//        var firstWord = words[0].reduce(into: [:]) { $0[$1, default : 0] += 1}
//        var result = [String]()
//
//        for word in words {
//            var nextWord = word.reduce(into: [:]) { $0[$1, default : 0] += 1}
//            for (letter, count) in firstWord {
//                if let newCount = nextWord[letter] {
//                    firstWord[letter] = min(newCount, count)
//                } else {
//                    firstWord[letter] = nil
//                }
//            }
//        }
//
//        for key in firstWord.keys{
//            result += Array(repeating: String(key), count: firstWord[key]!)
//        }
//
//        return result
//    }
//}


//https://leetcode.com/problems/remove-outermost-parentheses/
//1021. Remove Outermost Parentheses
//A valid parentheses string is either empty "", "(" + A + ")", or A + B, where A and B are valid parentheses strings, and + represents string concatenation.
//
//For example, "", "()", "(())()", and "(()(()))" are all valid parentheses strings.
//A valid parentheses string s is primitive if it is nonempty, and there does not exist a way to split it into s = A + B, with A and B nonempty valid parentheses strings.
//
//Given a valid parentheses string s, consider its primitive decomposition: s = P1 + P2 + ... + Pk, where Pi are primitive valid parentheses strings.
//
//Return s after removing the outermost parentheses of every primitive string in the primitive decomposition of s.
//
//
//
//Example 1:
//
//Input: s = "(()())(())"
//Output: "()()()"
//Explanation:
//The input string is "(()())(())", with primitive decomposition "(()())" + "(())".
//After removing outer parentheses of each part, this is "()()" + "()" = "()()()".
//Example 2:
//
//Input: s = "(()())(())(()(()))"
//Output: "()()()()(())"
//Explanation:
//The input string is "(()())(())(()(()))", with primitive decomposition "(()())" + "(())" + "(()(()))".
//After removing outer parentheses of each part, this is "()()" + "()" + "()(())" = "()()()()(())".
//Example 3:
//
//Input: s = "()()"
//Output: ""
//Explanation:
//The input string is "()()", with primitive decomposition "()" + "()".
//After removing outer parentheses of each part, this is "" + "" = "".
//
//
//Constraints:
//
//1 <= s.length <= 105
//s[i] is either '(' or ')'.
//s is a valid parentheses string.
//
//                                                class Solution {
//                                                    func removeOuterParentheses(_ S: String) -> String {
//                                                        var lvl = Int(0)
//                                                        var result = String()
//                                                        for char in S {
//                                                            if char == "(" {
//                                                                if lvl > 0 {
//                                                                    result.append(char)
//                                                                }
//                                                                lvl += 1
//                                                            } else {
//                                                                lvl -= 1
//                                                                if lvl > 0 {
//                                                                    result.append(char)
//                                                                }
//                                                            }
//                                                        }
//                                                        return result
//                                                    }
//                                                }
//
//class Solution {
//    func removeOuterParentheses(_ S: String) -> String {
//        return S.reduce(into: (s: String(), l: Int(0)), { if $1 == "(" { if $0.l > 0 { $0.s.append($1) }; $0.l += 1 } else { $0.l -= 1; if $0.l > 0 { $0.s.append($1) } } }).s
//    }
//}



//https://leetcode.com/problems/most-common-word/
//819. Most Common Word
//
//Given a string paragraph and a string array of the banned words banned, return the most frequent word that is not banned. It is guaranteed there is at least one word that is not banned, and that the answer is unique.
//
//The words in paragraph are case-insensitive and the answer should be returned in lowercase.
//
// 
//
//Example 1:
//
//Input: paragraph = "Bob hit a ball, the hit BALL flew far after it was hit.", banned = ["hit"]
//Output: "ball"
//Explanation:
//"hit" occurs 3 times, but it is a banned word.
//"ball" occurs twice (and no other word does), so it is the most frequent non-banned word in the paragraph.
//Note that words in the paragraph are not case sensitive,
//that punctuation is ignored (even if adjacent to words, such as "ball,"),
//and that "hit" isn't the answer even though it occurs more because it is banned.
//Example 2:
//
//Input: paragraph = "a.", banned = []
//Output: "a"
// 
//
//Constraints:
//
//1 <= paragraph.length <= 1000
//paragraph consists of English letters, space ' ', or one of the symbols: "!?',;.".
//0 <= banned.length <= 100
//1 <= banned[i].length <= 10
//banned[i] consists of only lowercase English letters.
//
//
//class Solution {
//    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
//        guard paragraph.count != 0 else { return "" }
//        
//        var arr = paragraph.split{ !$0.isLetter }.map{ $0.lowercased() }
//        let banned = Set(banned)
//        
//        var dict = [String:Int]()
//        var commonWord = String()
//        
//        for word in arr where !banned.contains(word) {
//            dict[word] = (dict[word] ?? 0) + 1
//            if dict[commonWord] ?? 0 < dict[word]! {
//                commonWord = word
//            }
//        }
//        return commonWord
//    }
//}
//



//https://leetcode.com/problems/occurrences-after-bigram/
//1078. Occurrences After Bigram
//Given two strings first and second, consider occurrences in some text of the form "first second third", where second comes immediately after first, and third comes immediately after second.
//
//Return an array of all the words third for each occurrence of "first second third".
//
//
//
//Example 1:
//
//Input: text = "alice is a good girl she is a good student", first = "a", second = "good"
//Output: ["girl","student"]
//Example 2:
//
//Input: text = "we will we will rock you", first = "we", second = "will"
//Output: ["we","rock"]
//
//
//Constraints:
//
//1 <= text.length <= 1000
//text consists of lowercase English letters and spaces.
//All the words in text a separated by a single space.
//1 <= first.length, second.length <= 10
//first and second consist of lowercase English letters.
//
//
//
//                                            func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
//                                                let words = text.split(separator: " ")
//                                                if words.count < 3 { return [] }
//                                                return (0..<words.count-2).reduce([String]()) {
//                                                    (words[$1] == first && words[$1+1] == second) ? $0 + [String(words[$1+2])] : $0
//                                                }
//                                            }


//https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/
//1309. Decrypt String from Alphabet to Integer Mapping
//You are given a string s formed by digits and '#'. We want to map s to English lowercase characters as follows:
//
//Characters ('a' to 'i') are represented by ('1' to '9') respectively.
//Characters ('j' to 'z') are represented by ('10#' to '26#') respectively.
//Return the string formed after mapping.
//
//The test cases are generated so that a unique mapping will always exist.
//
// 
//
//Example 1:
//
//Input: s = "10#11#12"
//Output: "jkab"
//Explanation: "j" -> "10#" , "k" -> "11#" , "a" -> "1" , "b" -> "2".
//Example 2:
//
//Input: s = "1326#"
//Output: "acz"
// 
//
//Constraints:
//
//1 <= s.length <= 1000
//s consists of digits and the '#' letter.
//s will be a valid string such that mapping is always possible.
//
//
//
//class Solution {
//    func freqAlphabets(_ s: String) -> String {
//        
//        let numbersByAlphabets = ["17": "q", "3": "c", "5": "e", "22": "v", "9": "i", "12": "l", "23": "w", "1": "a", "7": "g", "26": "z", "18": "r", "19": "s", "13": "m", "24": "x", "4": "d", "10": "j", "14": "n", "6": "f", "16": "p", "21": "u", "11": "k", "20": "t", "2": "b", "8": "h", "15": "o", "25": "y"]
//
//        var output = String()
//    
//        // 1) Access every character and keep converting them to alphabets by looking up using the dictionary
//        
//        // 2) When you encounter a "#", it means that the last 2 numnbers, before the "#",
//        // have to be interpreted as a single alphabet
//        
//        // 3) So, you go back delete 2 characters which were interpreted seperately, concatenate them and look it
//        // up in the dictionary and append to output string
//        
//        for index in s.indices {
//            let char = s[index]
//            if char != "#" {
//                // Here, the dictionary lookup can fail for "0". So, we just append '0' and later remove it when
//                // we encounter a "#". When you see an zero,  you will mostly certainly see a "#" next to it
//                let alphabet = numbersByAlphabets["\(char)"] ?? "\(char)"
//                output.append(alphabet)
//            } else {
//                output.removeLast(2)
//                let indexMinus1 = s.index(index, offsetBy: -1)
//                let indexMinus2 = s.index(index, offsetBy: -2)
//                let alphabet = numbersByAlphabets["\(s[indexMinus2])\(s[indexMinus1])"]!
//                output.append(alphabet)
//            }
//        }
//        
//        return output
//    }
//}

//https://leetcode.com/problems/largest-substring-between-two-equal-characters/
//1624. Largest Substring Between Two Equal Characters
//
//Given a string s, return the length of the longest substring between two equal characters, excluding the two characters. If there is no such substring return -1.
//
//A substring is a contiguous sequence of characters within a string.
//
// 
//
//Example 1:
//
//Input: s = "aa"
//Output: 0
//Explanation: The optimal substring here is an empty substring between the two 'a's.
//Example 2:
//
//Input: s = "abca"
//Output: 2
//Explanation: The optimal substring here is "bc".
//Example 3:
//
//Input: s = "cbzxy"
//Output: -1
//Explanation: There are no characters that appear twice in s.
//
//final class Solution {
//    // O(n) time | O(n) space
//    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
//        var dict: [Character: Int] = [:]
//        var maximum = -1
//        
//        for (index, char) in s.enumerated() {
//            if let value = dict[char] { // if we find another index, we update our maximum
//                let newValue = index - value - 1
//                maximum = max(maximum, newValue)
//            }
//            else { dict[char] = index } // we map the first index of a char
//        }
//        
//        return maximum
//    }
//}


//https://leetcode.com/problems/maximum-repeating-substring/
//1668. Maximum Repeating Substring
//For a string sequence, a string word is k-repeating if word concatenated k times is a substring of sequence. The word's maximum k-repeating value is the highest value k where word is k-repeating in sequence. If word is not a substring of sequence, word's maximum k-repeating value is 0.
//
//Given strings sequence and word, return the maximum k-repeating value of word in sequence.
//
//
//
//Example 1:
//
//Input: sequence = "ababc", word = "ab"
//Output: 2
//Explanation: "abab" is a substring in "ababc".
//Example 2:
//
//Input: sequence = "ababc", word = "ba"
//Output: 1
//Explanation: "ba" is a substring in "ababc". "baba" is not a substring in "ababc".
//Example 3:
//
//Input: sequence = "ababc", word = "ac"
//Output: 0
//Explanation: "ac" is not a substring in "ababc".
//
//
//                                                        class Solution {
//                                                           func maxRepeating(_ sequence: String, _ word: String) -> Int {
//                                                                var count: Int = 0
//                                                                var newStr: String = word
//                                                                while sequence.contains(newStr) {
//                                                                    count += 1
//                                                                    newStr += word
//                                                                }
//                                                                return count
//                                                            }
//                                                        }

//
//https://leetcode.com/problems/find-the-longest-balanced-substring-of-a-binary-string/
//2609. Find the Longest Balanced Substring of a Binary String
//You are given a binary string s consisting only of zeroes and ones.
//
//A substring of s is considered balanced if all zeroes are before ones and the number of zeroes is equal to the number of ones inside the substring. Notice that the empty substring is considered a balanced substring.
//
//Return the length of the longest balanced substring of s.
//
//A substring is a contiguous sequence of characters within a string.
//
// 
//
//Example 1:
//
//Input: s = "01000111"
//Output: 6
//Explanation: The longest balanced substring is "000111", which has length 6.
//Example 2:
//
//Input: s = "00111"
//Output: 4
//Explanation: The longest balanced substring is "0011", which has length 4.
//Example 3:
//
//Input: s = "111"
//Output: 0
//Explanation: There is no balanced substring except the empty substring, so the answer is 0.
//                                            
//                                            class Solution {
//                                                private var n = 0
//                                                func findTheLongestBalancedSubstring(_ s: String) -> Int {
//                                                    var s = Array(s).map { Int(String($0))! }
//                                                    self.n = s.count
//                                                    var maxValue = 0
//                                                    var middle = n / 2
//                                                    var next = middle + 1
//                                                    for i in 0..<n {
//                                                        let value = getLength(i, i + 1, s)
//                                                        maxValue = max(maxValue, value)
//                                                    }
//                                                    return maxValue * 2
//                                                }
//                                                
//                                                private func getLength(_ middle: Int, _ next: Int, _ s: [Int]) -> Int {
//                                                    var counter = 0
//                                                    var middle = middle
//                                                    var next = next
//                                                    while (middle >= 0 && next < n) {
//                                                        let val1 = s[middle]
//                                                        let val2 = s[next]
//                                                        if val1 == 0 && val2 == 1 {
//                                                            counter += 1
//                                                        } else {
//                                                            return counter
//                                                        }
//                                                        middle -= 1
//                                                        next += 1
//                                                    }
//                                                    return counter
//                                                }
//                                            }



//https://leetcode.com/problems/goal-parser-interpretation/
//1678. Goal Parser Interpretation
//You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.
//
//Given the string command, return the Goal Parser's interpretation of command.
//
//
//
//Example 1:
//
//Input: command = "G()(al)"
//Output: "Goal"
//Explanation: The Goal Parser interprets the command as follows:
//G -> G
//() -> o
//(al) -> al
//The final concatenated result is "Goal".
//Example 2:
//
//Input: command = "G()()()()(al)"
//Output: "Gooooal"
//Example 3:
//
//Input: command = "(al)G(al)()()G"
//Output: "alGalooG"
//
//
//Constraints:
//
//1 <= command.length <= 100
//command consists of "G", "()", and/or "(al)" in some order.
//
//
//func interpret(_ command: String) -> String {
//        let st = Array(command)
//        var fin = "", i = 0
//        while(i < st.count){
//            if st[i] == "G"{
//                fin += "G"
//                i += 1
//            }
//            else{
//                if st[i + 1] == ")"{
//                    fin += "o"
//                    i += 2
//                }
//                else{
//                    fin += "al"
//                    i += 4
//                }
//            }
//        }
//        return fin
//    }
//
//class Solution {
//    func interpret(_ command: String) -> String {
//         return command.replacingOccurrences(of:"()", with:"o").replacingOccurrences(of:"(al)", with:"al")
//     }
//}




//https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/
//2138. Divide a String Into Groups of Size k
//A string s can be partitioned into groups of size k using the following procedure:
//
//The first group consists of the first k characters of the string, the second group consists of the next k characters of the string, and so on. Each character can be a part of exactly one group.
//For the last group, if the string does not have k characters remaining, a character fill is used to complete the group.
//Note that the partition is done so that after removing the fill character from the last group (if it exists) and concatenating all the groups in order, the resultant string should be s.
//
//Given the string s, the size of each group k and the character fill, return a string array denoting the composition of every group s has been divided into, using the above procedure.
//
// 
//
//Example 1:
//
//Input: s = "abcdefghi", k = 3, fill = "x"
//Output: ["abc","def","ghi"]
//Explanation:
//The first 3 characters "abc" form the first group.
//The next 3 characters "def" form the second group.
//The last 3 characters "ghi" form the third group.
//Since all groups can be completely filled by characters from the string, we do not need to use fill.
//Thus, the groups formed are "abc", "def", and "ghi".
//Example 2:
//
//Input: s = "abcdefghij", k = 3, fill = "x"
//Output: ["abc","def","ghi","jxx"]
//Explanation:
//Similar to the previous example, we are forming the first three groups "abc", "def", and "ghi".
//For the last group, we can only use the character 'j' from the string. To complete this group, we add 'x' twice.
//Thus, the 4 groups formed are "abc", "def", "ghi", and "jxx".
//                        
//                        
//                        
//
//                        class Solution {
//                            func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
//                            guard !s.isEmpty else { return []}
//                            
//                            var result: [String] = []
//                            var countCharacters = 0
//                            var countGroups = 0
//
//                            for character in s {
//                            switch countCharacters {
//                                case 0:
//                                    result.append(String(character))
//                                    countCharacters += 1
//                                    if k == 1 {
//                                        countCharacters = 0
//                                        countGroups += 1
//                                    }
//                                case 1..<k - 1:
//                                    result[countGroups] += String(character)
//                                    countCharacters += 1
//                                    if k == 2 {
//                                        countCharacters = 0
//                                        countGroups += 1
//                                    }
//                                default:
//                                    result[countGroups] += String(character)
//                                    countCharacters = 0
//                                    countGroups += 1
//                                }
//                            }
//                            
//                            guard countCharacters != 0 else { return result }
//
//                            while countCharacters < k {
//                                result[countGroups] += String(fill)
//                                countCharacters += 1
//                            }
//                            return result
//                            }
//                        }

//https://leetcode.com/problems/capitalize-the-title/
//2129. Capitalize the Title
//You are given a string title consisting of one or more words separated by a single space, where each word consists of English letters. Capitalize the string by changing the capitalization of each word such that:
//
//If the length of the word is 1 or 2 letters, change all letters to lowercase.
//Otherwise, change the first letter to uppercase and the remaining letters to lowercase.
//Return the capitalized title.
//
//
//
//Example 1:
//
//Input: title = "capiTalIze tHe titLe"
//Output: "Capitalize The Title"
//Explanation:
//Since all the words have a length of at least 3, the first letter of each word is uppercase, and the remaining letters are lowercase.
//Example 2:
//
//Input: title = "First leTTeR of EACH Word"
//Output: "First Letter of Each Word"
//Explanation:
//The word "of" has length 2, so it is all lowercase.
//The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.
//Example 3:
//
//Input: title = "i lOve leetcode"
//Output: "i Love Leetcode"
//Explanation:
//The word "i" has length 1, so it is lowercase.
//The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.
//
//
//Constraints:
//
//1 <= title.length <= 100
//title consists of words separated by a single space without any leading or trailing spaces.
//Each word consists of uppercase and lowercase English letters and is non-empty.
//
//class Solution {
//    func capitalizeTitle(_ title: String) -> String {
//        var title = title
//            .map { $0.lowercased() }
//            .joined()
//            .split(separator: " ")
//
//        for i in 0 ..< title.count where title[i].count > 2 {
//            let uppercased = title[i].removeFirst().uppercased()
//            title[i] = uppercased + title[i]
//        }
//
//        return title.joined(separator: " ")
//    }
//}

