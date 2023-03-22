/* How to read? Select the code you want and use "command + /" hotkeys in XCode to remove commentaries.*/

/* Simple temperature output. */
//let day = "Monday"
//let dailyTemperature = 75
//print ("Today is \(day)! Rise and shine!")
//print ("The temperature on \(day) is \(dailyTemperature) F.")
//var temperature = 70
//print ("The temperature on \(day) morning is \(temperature) F.")
//temperature = 80
//print ("The temperature on \(day) evening is \(temperature) F.")
//let weeklyTemperature = 75
//temperature = weeklyTemperature
//print("The average temperature this week is \(temperature) F.")
//let test = 5
//let test1 = 0.33
//let r = Double(test)+test1
//print(r)

/* Output:
Today is Monday! Rise and shine!
The temperature on Monday is 75 F.
The temperature on Monday morning is 70 F.
The temperature on Monday evening is 80 F.
The average temperature this week is 75 F.
5.33
*/

/* Simple game score output. */
//let levelScore = 10
//var gameScore = 0
//gameScore += levelScore
//print("The game's score is \(gameScore).")
//var levelBonusScore = 10.0
//levelBonusScore = 20
//print("The level's bonus score is \(levelBonusScore).")
//gameScore += Int(levelBonusScore)
//print("The game's final score is \(gameScore).")
//let levelLowestScore = 50
//let levelHighestScore = 99
//let levels = 10
//var levelScoreDifference = levelHighestScore - levelLowestScore
//var levelAverageScore = levelScoreDifference / levels
//print("The level's average score is \(levelAverageScore).")
//let averageLevelScore = Double(levelScoreDifference) / Double(levels)
//print("The level's average score is \(averageLevelScore).")

/* Output:
 The game's score is 10.
 The level's bonus score is 20.0.
 The game's final score is 30.
 The level's average score is 4.
 The level's average score is 4.9.
 */

/* Simple weather app modified. */
//let day = "Monday"
//print("Today is \(day).")
//let hour = "6"
//let minutes = "15"
//let period = "PM"
//var time = hour + ":" + minutes + " " + period
//print("It is \(time).")
//print("It is \(time) on \(day).")
//let timezone = "PST"
//time += " \(timezone)"
//print("It is \(time).")
//time += " on \(day)"
//print("It is \(time).")
//let shortDay = day.prefix(3)
//print("Today is \(shortDay).")
//print("It is \(hour):\(minutes) \(period) \(timezone) on \(shortDay).")

/* Output:
 Today is Monday.
 It is 6:15 PM.
 It is 6:15 PM on Monday.
 It is 6:15 PM PST.
 It is 6:15 PM PST on Monday.
 Today is Mon.
 It is 6:15 PM PST on Mon.
 */

/* Weather app, paid subscription + settings check demo. */
//let freeApp = true
//if freeApp == true {
//    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
//}
//let morningTemperature = 70
//let eveningTemperature = 80
//if morningTemperature < eveningTemperature {
//    print("The coldest temperature is in the morning.")
//}
//else {
//    print("The coldest temperature is in the evening.")
//}
//let temperatureDegree = "Fahrenheit"
//if temperatureDegree == "Fahrenheit" {
//    print("Your selection of scale's temperature is Fahrenheit.")
//}
//else {
//    print("Your selection of scale's temperature is Celsius.")
//}
//let Fahrenheit = true
//let Celcius = false
//if Fahrenheit || Celcius {
//    print("Fahrenheit is being used as default. The app configured properly.")
//}
//else {
//    print("Celcius is being used as default. The app isn't configured properly.")
//}
//if temperatureDegree == "Celsius" || temperatureDegree == "Fahrenheit" {
//  print("The weather app is configured properly.")
//} else {
//  print("The weather app isn't configured properly.")
//}
//switch temperatureDegree {
//case "Fahrenheit":
//    print("App uses Fahrenheit degrees for its temperature.")
//case "Celcius":
//    print("App uses Celcius degrees for its temperature.")
//default:
//    print("App has an unknown configuration.")
//}

/* Output:
 You are using the free version of the app. Buy the full version of the app to get access to all of its features.
 The coldest temperature is in the morning.
 Your selection of scale's temperature is Fahrenheit.
 Fahrenheit is being used as default. The app configured properly.
 The weather app is configured properly.
 App uses Fahrenheit degrees for its temperature.*/

/* Game's level checking. */
//let levels = 10
//let freeLevels = 4
//let bonusLevel = 3
//for i in 1...levels {
//    if i == bonusLevel {
//        print("It's a bonus level")
//    }
//    else if i <= 4 {
//        print("Game's level is \(i)")
//    }
//}

/* Output:
 Game's level is 1
 Game's level is 2
 It's a bonus level
 Game's level is 4
 */

/* Paid levels checking in a game. */
//let levels = 10
//let freeLevels = 4
//let bonusLevel = 3
//for level in 1...levels {
//  if level == bonusLevel {
//    print("Skip bonus level \(bonusLevel).")
//    continue
//  }
//  print("Play level \(level).")
//  if level == freeLevels {
//    print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
//    break
//  }
//}

/* Output:
 Play level 1.
 Play level 2.
 Skip bonus level 3.
 Play level 4.
 You have played all 4 free levels. Buy the game to play the remaining 6 levels.
 */

/* Simple roll&dice. */
//var firstDice = Int.random(in: 1...6)
//var secondDice = Int.random(in: 1...6)
//while firstDice != secondDice {
//  firstDice = Int.random(in: 1...6)
//  secondDice = Int.random(in: 1...6)
//}
//print("You rolled a double \(firstDice).")

/* Output is random:
You rolled a double 2.
 */

/* Another method of roll&dice. */
//var firstDice = 0
//var secondDice = 0
//repeat {
//  firstDice = Int.random(in: 1...6)
//  secondDice = Int.random(in: 1...6)
//} while firstDice != secondDice
//print("You rolled a double \(firstDice).")

/* Output is random:
 You rolled a double 6.
 */

/* App passcodes. */
//var password = "1234"
//let passcode = Int(password)
//print("The passcode of the app is \(passcode!).")
//password = "hello world"
//if let code = Int(password) {
//  print("The passcode of the app is \(code).")
//} else {
//  print("Invalid passcode!")
//}
//let accessCode: Int
//if let code = Int(password) {
//  accessCode = code
//} else {
//  accessCode = 1111
//}
//print("The passcode of the app is \(accessCode).")
//let firstPassword = "hello"
//let secondPassword = "world"
//if let firstPasscode = Int(firstPassword),
//  let secondPasscode =
//    Int(secondPassword)
//{
//  print(
//    "The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode)."
//  )
//} else {
//  print("Invalid passcodes!")
//}
//let firstAccessCode: Int
//let secondAccessCode: Int
//if let firstPasscode = Int(firstPassword),
//  let secondPasscode =
//    Int(secondPassword)
//{
//  firstAccessCode = firstPasscode
//  secondAccessCode = secondPasscode
//} else {
//  firstAccessCode = 1111
//  secondAccessCode = 2222
//}
//print(
//  "The first passcode of the app is \(firstAccessCode) and the second passcode of the app is \(secondAccessCode)."
//)

/* Output:
 The passcode of the app is 1234.
 Invalid passcode!
 The passcode of the app is 1111.
 Invalid passcodes!
 The first passcode of the app is 1111 and the second passcode of the app is 2222.
 */

/* Paid levels in the game. */
//var levelScore:[Int] = []
//let firstLevelScore = 10
//let secondLevelScore = 20
//let thirdLevelScore = 30
//let levelBonusScore = 40
//let freeLevelsScore = [20, 30]
//let freeLevels = 2
//let totalLevels = 6
//var currentLevel = 2
//for _ in 1...totalLevels {
//    if levelScore.isEmpty {
//        print("Hello and welcome!")
//        levelScore.append(firstLevelScore+levelBonusScore)
//        print("The first level's score is \(levelScore[0]).")
//    } else if levelScore.count <= freeLevels {
//        levelScore.append(secondLevelScore)
//        print("The \(currentLevel) level's score is \(levelScore).")
//        currentLevel+=1
//        continue
//    } else {
//        print(levelScore)
//        levelScore.removeAll()
//        print("Buy an app to play full version.")
//        break
//    }
//}
/* Output:
 Hello and welcome!
 The first level's score is 50.
 The 2 level's score is [50, 20].
 The 3 level's score is [50, 20, 20].
 [50, 20, 20]
 Buy an app to play full version.
 */

/* Paid levels modification. */
//var levelScores: [Int] = []
//if levelScores.count == 0 {
//  print("Start playing the game!")
//}
//let firstLevelScore = 10
//levelScores.append(firstLevelScore)
//print("The first level's score is \(levelScores[0]).")
//let levelBonusScore = 40
//levelScores[0] += levelBonusScore
//print("The first level's score is \(levelScores[0]).")
//let freeLevelScores = [20, 30]
//levelScores += freeLevelScores
//let freeLevels = 3
//if levelScores.count == freeLevels {
//  print(
//    "You have finished playing the free version of the game. Buy the game to play its full version."
//  )
//  levelScores = []
//  print("Game restarted!")
//}
/* Output:
 Start playing the game!
 The first level's score is 10.
 The first level's score is 50.
 You have finished playing the free version of the game. Buy the game to play its full version.
 Game restarted!
 */

/* Implementing user authentification. */
//let credentials = ("", -1111)
//if credentials.0 == "" || credentials.1 < 0 {
//  print("Invalid credentials!")
//} else {
//  print("The username is \(credentials.0) and the password is \(credentials.1).")
//}
//let fullCredentials = (password: "pass", passcode: 1111)
//if fullCredentials.password == "" || fullCredentials.passcode < 0 {
//  print("Invalid credentials!")
//} else {
//  print("The password is \(fullCredentials.password) and the passcode is \(fullCredentials.passcode).")
//}
/* Output:
 Invalid credentials!
 The password is pass and the passcode is 1111.
 */

/* Imlementing forecast for a week. */
//var weeklyTemperatures: [String: Int] = [:]
//weeklyTemperatures = [
//  "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95,
//]
//weeklyTemperatures["Monday"]! += 20
//print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F.")
//if let temperature = weeklyTemperatures["Sunday"] {
//  print("The temperature on Sunday is \(temperature)°F.")
//} else {
//  weeklyTemperatures["Sunday"] = 100
//  print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F.")
//}
//if weeklyTemperatures.count == 7 {
//  print("You have access to the weather forecast of the whole week.")
//  weeklyTemperatures = [:]
//  print("Reset weekly temperatures for next week!")
//}

/* Output:
 The temperature on Monday is 90°F.
 The temperature on Sunday is 100°F.
 You have access to the weather forecast of the whole week.
 Reset weekly temperatures for next week!
*/

/* Bringing enumerations. */

//let levelScores = [10, 20, 30, 40, 50, 60, 70]
//for (level, score) in levelScores.enumerated() {
//  print("The score of level \(level + 1) is \(score).")
//}
//var gameScore = 0
//for levelScore in levelScores {
//  gameScore += levelScore
//}
//print("The game's score is \(gameScore).")

/* Output:
 The score of level 1 is 10.
 The score of level 2 is 20.
 The score of level 3 is 30.
 The score of level 4 is 40.
 The score of level 5 is 50.
 The score of level 6 is 60.
 The score of level 7 is 70.
 The game's score is 280.
 */

/* Simple doubles. */

//func double(passedValue: Int) {
//  let result = passedValue * 2
//  print("Double \(passedValue) is \(result)")
//}
//
//double(passedValue: 2)

/* Output:
Double 2 is 4
3
4
*/

/* Strings usage. */

//func hiThere(fn: String, sn: String) {
//let fullname = fn + " " + sn
//print("Hi there \(fullname)")
//}
//hiThere(fn:  "Fred", sn:  "Bloggs")
//
//func hiThere(_ fn: String, _ sn: String)  {
//let fullname = fn + " " + sn
//print("Hi there \(fullname)")
//}
//hiThere("Fred", "Bloggs")
//
//func hiThere(firstname fn: String, surname sn: String)  {
//let fullname = fn + " " + sn
//print("Hi there \(fullname)")
//}
//hiThere(firstname: "Fred", surname: "Bloggs")
//
//func display(_ s1: String,  _ s2: String, score: Int = 0) {
//let name_score = s1 + " " + s2 + " " + String(score)
//print("Hello \(name_score)")
//}
//display("John", "Roberts")
//display("John",  "Roberts",  score: 100)

/* Output:
 Hi there Fred Bloggs
 Hi there Fred Bloggs
 Hi there Fred Bloggs
 Hello John Roberts 0
 Hello John Roberts 100
 */

/* Adding currency content. */

//var goldBars = 0
//func unlockTreasureChest(inventory: Int) -> Int {
//  inventory + 100
//}
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)

/* Output:
 100
 200
 300
 */

/* Incrementing. */

//var goldBars = 0
//func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
//  inventory += amount
//}
//incrementInventory(&goldBars)
//print(goldBars)
//incrementInventory(&goldBars)
//print(goldBars)
//incrementInventory(&goldBars)
//print(goldBars)
//incrementInventory(&goldBars, by: 300)
//print(goldBars)
//incrementInventory(&goldBars, by: 50)
//print(goldBars)

/* Output:
 100
 200
 300
 600
 650
*/

/* Implementing closures.
 Closure:
 {( argument list) -> ReturnType in
     Execute some code}
 */

//var maximum = {
//  (num1: Int, num2: Int) -> Int in
//  return num1 > num2 ? num1 : num2
//}
//print("Maximum value is:", maximum(1, 6))
///*
// Closure into variable:
// var aClosure = {
//   () -> Void in
//   print("This is a closure")}
// */
//func  updateValue() -> () -> Void {
//    let capturedValue = 10
//    return { print("Static INT value is", capturedValue) }
//  /* Returns a closure holding capturedValue */
//}
//let captureClosure = updateValue()
//captureClosure()
//
//var goldBars = 0
//let unlockTreasureChest = { (inventory: inout Int) in
//  inventory += 100
//}
//unlockTreasureChest(&goldBars)
//print("Goldbars fun value is", goldBars)
//
///*Passing an argument into a closure:*/
//var argumentClosure = {
//  (str: String) -> Void in
//  print("Hello \(str)")
//}
//argumentClosure("Bertram")

/* Output:
 Maximum value is: 6
 Static INT value is 10
 Goldbars fun value is 100
 Hello Bertram
 */

/* Shortening closures. */

//func forwards(s1:String, s2:String) -> Bool {
//    return s1 > s2
//}
//let letters = ["H", "i"]
//let sorted = letters.sorted(by: forwards)
//print(sorted)
//let myCollection = letters.sorted(by: {(s1: String, s2: String) -> Bool in return s1 < s2})
//print(myCollection)
//let myCollection1 = letters.sorted(by: {s1, s2 in return s1 < s2})
//print(myCollection1)
//let myCollection2 = letters.sorted(by: {$0 < $1})
//print(myCollection2)

/* Output:
 ["i", "H"]
 ["H", "i"]
 ["H", "i"]
 ["H", "i"]
*/

/* Switch cases. */

//print("Welcome to your virtual bank system. What kind of account would you like to make?")
//print("1. Debit account")
//print("2. Credit account")
//print("3. Bank account")
//var accountType = ""
//var input = 0
//var userInput = Int.random(in: 1...5)
//print("Which option do you choose? (1, 2 or 3)")
//repeat {
//        input = userInput
//        print("The selected option is \(input)")
//    switch userInput {
//    case 1: accountType = "debit"
//    case 2: accountType = "credit"
//    case 3: accountType = "generic"
//    default: break }
//    } while accountType.count == input /* Change input for "" to check for wrong input. */
//print("You have opened a \(accountType) account.")

/* Output is random 1-5:
 Welcome to your virtual bank system. What kind of account would you like to make?
 1. Debit account
 2. Credit account
 3. Bank account
 Which option do you choose? (1, 2 or 3)
 The selected option is 3
 You have opened a generic account.
 */

/* Making a bank account demo. */

//var balance = 100
//func getBalanceInfo() -> String {
//    "Current balance: $\(balance)"
//}
//print(getBalanceInfo())
//func withdraw(_ amount: Int) {
//    balance -= amount
//    print("Withdrew: $\(amount). \(getBalanceInfo())")
//}
//withdraw(20)
//func debitWithdraw(_ amount: Int) {
//    if amount > balance {
//        print("Insufficient funds to withdraw $\(amount). \(getBalanceInfo())")
//    } else {
//        withdraw(amount)
//    }
//}
//debitWithdraw(81)
//debitWithdraw(80)
//func deposit(_ amount: Int) {
//    balance += amount
//    print("Deposited $\(amount). \(getBalanceInfo())")
//}
//deposit(100)
//func creditDeposit(_ amount: Int) {
//    deposit(amount)
//    if balance == 0 {
//        print("Paid off account balance.")
//    } else if balance > 0 {
//        print("Overpaid account balance.")
//    }
//}
//withdraw(200)
//creditDeposit(50)
//creditDeposit(50)
//creditDeposit(100)

/* Output:
 Current balance: $100
 Withdrew: $20. Current balance: $80
 Insufficient funds to withdraw $81. Current balance: $80
 Withdrew: $80. Current balance: $0
 Deposited $100. Current balance: $100
 Withdrew: $200. Current balance: $-100
 Deposited $50. Current balance: $-50
 Deposited $50. Current balance: $0
 Paid off account balance.
 Deposited $100. Current balance: $100
 Overpaid account balance.
*/

/* Bank app emulation. */

//func getBalanceInfo() -> String {
//    "Current balance: $\(balance)"
//}
//func withdraw(_ amount: Int) {
//    balance -= amount
//    print("Withdrew: $\(amount). \(getBalanceInfo())")
//}
//func debitWithdraw(_ amount: Int) {
//    if amount > balance {
//        print("Insufficient funds to withdraw $\(amount). \(getBalanceInfo())")
//    } else {
//        withdraw(amount)
//    }
//}
//func deposit(_ amount: Int) {
//    balance += amount
//    print("Deposited $\(amount). \(getBalanceInfo())")
//}
//func creditDeposit(_ amount: Int) {
//    deposit(amount)
//    if balance == 0 {
//        print("Paid off account balance.")
//    } else if balance > 0 {
//        print("Overpaid account balance.")
//    }
//}
//print("Welcome to your virtual bank system. What kind of account would you like to make?")
//print("1. Debit account")
//print("2. Credit account")
//print("3. Bank account")
//var accountType = ""
//var input = 0
//repeat {
//    print("Which option do you choose? (1, 2 or 3)")
//    input = Int.random(in: 1...3) // Check with previous exercise
//    print("Selected option: \(input)")
//    switch input {
//    case 1: accountType = "debit"
//    case 2: accountType = "credit"
//    case 3: accountType = "generic"
//    default: break
//    }
//} while accountType == ""
//var balance = 100 // only declared again for this part 3 solution, already declared in part 2
//let transferAmount = 50
//print("Current balance: $\(balance)")
//print("Transfer amount: $\(transferAmount)")
//func transferMoney(_ transferType: String) {
//    switch transferType {
//    case "withdraw":
//        if accountType == "debit" {
//            debitWithdraw(transferAmount)
//        } else {
//            withdraw(transferAmount)
//        }
//    case "deposit":
//        if accountType == "credit" {
//            creditDeposit(transferAmount)
//        } else {
//            deposit(transferAmount)
//        }
//    default:
//        break
//    }
//}
//var isSystemOpened = true
//var option = 0
//repeat {
//    print("What would you like to do?")
//    print("1. Check bank account")
//    print("2. Withdraw money")
//    print("3. Deposit money")
//    print("4. Close the system")
//    print("Which option do you choose? (1, 2, 3 or 4)")
//    option = Int.random(in: 1...5)
//    print("Selected option: \(option).")
//    switch option {
//    case 1: print("Current balance: $\(balance) dollars")
//    case 2: transferMoney("withdraw")
//    case 3: transferMoney("deposit")
//    case 4:
//        isSystemOpened = false
//        print("The system is closed.")
//    default: break
//    }
//} while isSystemOpened

/* Output:
 Welcome to your virtual bank system. What kind of account would you like to make?
 1. Debit account
 2. Credit account
 3. Bank account
 Which option do you choose? (1, 2 or 3)
 Selected option: 2
 Current balance: $100
 Transfer amount: $50
 What would you like to do?
 1. Check bank account
 2. Withdraw money
 3. Deposit money
 4. Close the system
 Which option do you choose? (1, 2, 3 or 4)
 Selected option: 3.
 Deposited $50. Current balance: $150
 Overpaid account balance.
 What would you like to do?
 1. Check bank account
 2. Withdraw money
 3. Deposit money
 4. Close the system
 Which option do you choose? (1, 2, 3 or 4)
 Selected option: 3.
 Deposited $50. Current balance: $200
 Overpaid account balance.
 What would you like to do?
 1. Check bank account
 2. Withdraw money
 3. Deposit money
 4. Close the system
 Which option do you choose? (1, 2, 3 or 4)
 Selected option: 4.
 The system is closed.
 */

/* Enums. */

//enum PastaTypes: Int {
//  case spaghetti = 8
//  case penne = 10
//  case ravioli = 11
//  case rigatoni = 12
//}
//let cookingTime = PastaTypes.spaghetti.rawValue
//print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")
//
//func cookingPerfectPasta(pasta: PastaTypes) {
//  let cookingTime = pasta.rawValue
//  print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
//}
//cookingPerfectPasta(pasta: .rigatoni)

/* Output:
Spaghetti will be perfectly cooked in 8 minutes.
rigatoni will be perfectly cooked in 12 minutes.
 */

/* Enum, switch and count. */

//enum PastaTypes: Int, CaseIterable {
//  case spaghetti
//  case penne
//  case ravioli
//  case rigatoni
//}
//let totalCaseCount = PastaTypes.allCases.count
//print(totalCaseCount)

/* Output:
 4
 */

/* Playing with enums, combined. */

//enum PastaTypes: Int {
//  case spaghetti = 8
//  case penne = 10
//  case ravioli = 11
//  case rigatoni = 12
//}
//let cookingTime = PastaTypes.spaghetti.rawValue
//print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")
//func cookingPerfectPasta(pasta: PastaTypes) {
//  let cookingTime = pasta.rawValue
//  print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
//}
//cookingPerfectPasta(pasta: .rigatoni)
//enum PastaTypesA {
//  case spaghetti(cookingTime: Int)
//  case penne(cookingTime: Int)
//  case ravioli(cookingTime: Int)
//  case fusilli(cookingTime: Int)
//  case rigatoni(cookingTime: Int)
//}
//var checkIfCooked = PastaTypesA.spaghetti(cookingTime: 8)
//if cookingTime < 8 {
//  print("Spaghetti is still not fully cooked...")
//} else {
//  print("Spaghetti is cooked, take it out of the water!")
//}
//func checkIfCooked2(for pasta: PastaTypesA) {
//  switch pasta {
//  case .spaghetti(let cookingTime):
//    if cookingTime < 8 {
//      print("Spaghetti is still not fully cooked...")
//    } else {
//      print("Spaghetti is cooked, take it out of the water!")
//    }
//  default: return
//  }
//}
//checkIfCooked2(for: .spaghetti(cookingTime: 6))
//func checkIfCooked3(for pasta: PastaTypesA) {
//  switch pasta {
//  case .spaghetti(let cookingTime) where cookingTime >= 8:
//    print("Spaghetti is cooked, take it out of the water!")
//  default: print("Pasta is not cooked.")
//  }
//}
//checkIfCooked3(for: .spaghetti(cookingTime: 7))

/* Output:
Spaghetti will be perfectly cooked in 8 minutes.
rigatoni will be perfectly cooked in 12 minutes.
Spaghetti is cooked, take it out of the water!
Spaghetti is still not fully cooked...
Pasta is not cooked.
 */

/* Menu simulation. */

//enum Ingredient: String {
//  case lettuce = "Romaine Lettuce"
//  case croutons = "Salted Croutons"
//  case chicken = "Free Range Chicken"
//}
//let ingredient = Ingredient.lettuce
//switch ingredient {
//case .lettuce:
//  print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
//case .croutons:
//  print("Our \(ingredient.rawValue) makes sure we do not have to use additional salt in our salads.")
//case .chicken: print("Our meals tastes better with \(ingredient.rawValue) to raise the quality.")
//}
//enum RecipeInformation {
//  case allergens(information: String)
//}
//let recipeInformation = RecipeInformation.allergens(information: "Peanuts, Milk, Gluten")
//switch recipeInformation {
//case .allergens(let information): print("The meal includes the following allergens: \(information).")
//}
//
//var pastaTypesSet = Set<String>()
//var pastaTypesArray = [String]()
//pastaTypesSet.insert("Tagliatelle")
//print(pastaTypesSet)
//print(pastaTypesSet.count)
//pastaTypesSet.remove("Spaghetti")
//let pastaSetUnion = pastaTypesSet.union(pastaTypesSet)

/* Output:
We use Romaine Lettuce that has the richest flavor from all the lettuces.
The meal includes the following allergens: Peanuts, Milk, Gluten.
 ["Tagliatelle"]
 1
*/

/* Sets. */

//let reservationsInPerson: Set <String> = (["000-111-222", "000-122-111"])
//let reservationsOverPhone: Set <String> = (["000-111-333", "000-122-112"])
//let reservationsOverInternet: Set <String> = (["000-111-444", "000-122-113"])
//let inPersonAndOverPhone: Set<String> = reservationsInPerson.union(reservationsOverPhone)
//print(inPersonAndOverPhone)
//var allPhoneNumbers: Set <String> = inPersonAndOverPhone.union(reservationsOverInternet)
//print(allPhoneNumbers)
//var confirmationCodes: Set<String> = (["LL127","LL129"])
//print(allPhoneNumbers.count, confirmationCodes.count)
//confirmationCodes.insert("LL001")
//print("\(allPhoneNumbers.count) \(confirmationCodes.count)")
//allPhoneNumbers.remove("000-111-333")
//print(allPhoneNumbers.count, confirmationCodes.count)

/* Output:
["000-111-222", "000-122-112", "000-111-333", "000-122-111"]
["000-111-222", "000-122-112", "000-111-444", "000-111-333", "000-122-111", "000-122-113"]
6 2
6 3
5 3
*/

/* Sets, enums. */

//var mySet: Set<String> = []
//print(mySet)
//
//var letters1: Set<String> = ["a","b","c","d"]
//
//var letters4: Set = ["a","b","c","d"]
//print(letters1,letters4)
//var cities: Set = ["Cairo", "London", "Paris"]
//var cities2: Set<String> = ["Moscow", "Hanoi", "Zurich"]
//print(cities,cities2)
//enum Week: Int, CaseIterable {
//  case Monday = 1
//  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
//}
//for day in Week.allCases {
//  print("\(day) is day \(day.rawValue) of the week")
//}

/* Output:
 []
 ["b", "a", "d", "c"] ["d", "b", "c", "a"]
 ["Cairo", "Paris", "London"] ["Hanoi", "Moscow", "Zurich"]
 Monday is day 1 of the week
 Tuesday is day 2 of the week
 Wednesday is day 3 of the week
 Thursday is day 4 of the week
 Friday is day 5 of the week
 Saturday is day 6 of the week
 Sunday is day 7 of the week
*/

/* Enums inserting. */

//enum PastaTypes: Int {
//    case spaghetti
//    case penne
//    case ravioli
//    case rigatoni
//}
//print(PastaTypes.penne.rawValue)
//print(PastaTypes.ravioli.rawValue)
//print(PastaTypes.rigatoni.rawValue)
//print(PastaTypes.spaghetti.rawValue)
//var listOfNumbers = Set<Int>()
//listOfNumbers.insert(1)
//listOfNumbers.insert(5)
//listOfNumbers.insert(8)
//listOfNumbers.insert(3)
//listOfNumbers.insert(1)
//print(listOfNumbers.count)

/* Output:
 1
 2
 3
 0
 4
 */

/* Inheritance. */

//class Dish {
//    private let name: String
//    private var ingredients: [String]
//    init(name: String, ingredients: [String]) {
//        self.name = name
//        self.ingredients = ingredients
//    }
//    func printInfo() {
//        print(name)
//        print(ingredients)
//    }
//}
//final class AppetizerDish: Dish {
//    override func printInfo() {
//        print("Appetizer")
//        super.printInfo()
//    }
//}
//final class MainDish: Dish {
//}
//for _ in 0..<5 {
//    let randomNumber = Int.random(in: 0...1)
//    let dish: Dish
//    if randomNumber == 0 {
//        dish = AppetizerDish(
//            name: "Margherita Flatbread",
//            ingredients: [
//                "Margherita",
//                "Flatbread",
//            ]
//        )
//    } else {
//        dish = MainDish(
//            name: "Super Spaghetti",
//            ingredients: [
//                "Spaghetti",
//                "Tomato sauce",
//            ]
//        )
//    }
//    if let appetizerDish = dish as? AppetizerDish {
//        appetizerDish.printInfo()
//    }
//    if dish is MainDish {
//        print("Main Dish!")
//    }
//}

/* Output:
 Appetizer
 Margherita Flatbread
 ["Margherita", "Flatbread"]
 Appetizer
 Margherita Flatbread
 ["Margherita", "Flatbread"]
 Appetizer
 Margherita Flatbread
 ["Margherita", "Flatbread"]
 Main Dish!
 Main Dish!
*/

/* Delegating. */

//protocol Employee {
//    var name: String { get }
//    func executePrimaryDuty()
//}
//struct Cook: Employee {
//    let name: String
//    var delegate: Employee?
//    func executePrimaryDuty() {
//let name = delegate?.name ?? self.name
//print("\(name) cooks extra good food.")
//    }
//}
//var mario = Cook(name: "Mario")
//let adrian = Cook(name: "Adrian")
//mario.delegate = adrian
//mario.executePrimaryDuty()

/*
Adrian cooks extra good food.
*/

/* Protocols inheritance. */

//protocol Dish {
//    var name: String { get }
//    var preparationMinutes: Int { get set }
//    func prepare()
//    func plate(artisticLevel: Int)
//}
//class MainDish: Dish {
//    let name: String
//    var preparationMinutes: Int
//    init(name: String, preparationMinutes: Int) {
//        self.name = name
//        self.preparationMinutes = preparationMinutes
//    }
//    func prepare() {
//        print("Preparing \(name) for \(preparationMinutes) minutes")
//    }
//    func plate(artisticLevel: Int) {
//        print("Plating artistic level: \(artisticLevel)")
//    }
//}
//let superSpaghetti = MainDish(
//    name: "Super Spaghetti",
//    preparationMinutes: 35
//)
//superSpaghetti.prepare()
//superSpaghetti.plate(artisticLevel: 10)

/* Output:
Preparing Super Spaghetti for 35 minutes
Plating artistic level: 10
*/

/* Delegating extended. */

//protocol Driver {
//    var name: String { get }
//    func driveToDestination(_ destination: String, with food: String)
//}
//class DeliveryDriver: Driver {
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//    func driveToDestination(_ destination: String, with food: String) {
//        print("\(name) is driving to \(destination) to deliver \(food).")
//    }
//}
//class LittleLemon {
//    var deliveryDriver: Driver?
//    func deliverFood(_ food: String, to destination: String) {
//        if let deliveryDriver = deliveryDriver {
//            deliveryDriver.driveToDestination(
//                destination,
//                with: food
//            )
//        } else {
//            print("No delivery driver.")
//        }
//    }
//}
//let bob = DeliveryDriver(name: "Bob")
//let littleLemon = LittleLemon()
//littleLemon.deliverFood(
//    "Super Spaghetti",
//    to: "1 Spaghetti Lane"
//)
//littleLemon.deliveryDriver = bob
//littleLemon.deliverFood(
//    "Super Spaghetti",
//    to: "1 Spaghetti Lane"
//)

/* Output:
No delivery driver.
Bob is driving to 1 Spaghetti Lane to deliver Super Spaghetti.
*/

/* Delegating extended. */

//protocol Protocol1 {
//  func output()
//}
//extension Protocol1 {
//  func output() {
//    print("Output")
//  }
//}
//class Delegate: Protocol1 {
//  func output() {
//    print("Delegation")
//  }
//}
//class Output {
//  var delegate: Protocol1?
//  func output() {
//    delegate?.output()
//  }
//}
//let output = Output()
//output.delegate = Delegate()
//output.output()
//class Spaghetti {
//    func fetchIngredients() {
//        print("Spaghetti Ingredients")
//    }
//}
//class SpaghettiMeatball: Spaghetti {
//    override func fetchIngredients() {
//        print("BBB")
//        super.fetchIngredients()
//        print("AAA")
//    }
//}
//let spaghettiMeatball = SpaghettiMeatball()
//spaghettiMeatball.fetchIngredients()
//protocol Employee {
//    var daysWorking: Int { get set }
//}
//struct Waiter: Employee {
//    var daysWorking: Int
//}
//print(Waiter.self)

/* Output:
 Delegation
 BBB
 Spaghetti Ingredients
 AAA
 Waiter
 */

/* Catching errors. */

//enum CalculatorError: Error {
//    case divisionByZero
//}
//class Calculator {
//
//    func divide(x: Double, y: Double) throws -> Double {
//
//        if y == 0 {
//            throw CalculatorError.divisionByZero
//        }
//
//        return x / y
//    }
//}
//let calculator = Calculator()
//do {
//    let successfulResult = try calculator.divide(x: 1, y: 2)
//    print(successfulResult)
//    let invalidResult = try calculator.divide(x: 1, y: 0)
//}
//catch CalculatorError.divisionByZero {
//    print("Division by zero detected and not allowed")
//}

/* Output:
 0.5
 Division by zero detected and not allowed
 */

/* Higher order function example. */

//let originalPrices = [2, 4, 6, 19, 39]
//func covertPrices(originalPrices: [Int], conversionClosure: (_ price: Int) -> Int) -> [Int] {
//    var convertedPrices = [Int]()
//    for originalPrice in originalPrices {
//        let convertedPrice = conversionClosure(originalPrice)
//        convertedPrices.append(convertedPrice)
//    }
//        return convertedPrices
//}
//covertPrices(originalPrices: originalPrices, conversionClosure: {$0 * 2})

/* Output:
 */

/* Recursion. */

//var n = 6
//while n > 0 {
//    print(n)
//    n -= 1
//}
//func output(n: Int) {
//    if (n==0) { // step 1 base case
//        return
//    }
//    else {
//        print(n) // step 2 perform the work
//        output(n: n-1) // step 3 repeat recursion with smaller problem
//    }
//}

/* Output:
 6
 5
 4
 3
 2
 1
 */

/* Error handling. */

//let file= open(“file.txt”)
//do {
//    defer {
//        file.close()
//    }
//    let result = try readFile(file)
//} catch {
//    // Handle errors here
//}

//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________
//_____________________________________________________________________________________________________________________________

/*How to use state and binding?*/
/*Suppose you have a view called ContentView and another one called LittleLemonLogocontaining the logo of Little Lemon restaurant. You want to create some functionality in ContentView that controls the logo's visibility.
 ContentView will look like this:*/
//struct ContentView: View {
//    @State var showLogo = true
//    var body: some View {
//        VStack {
//            if showLogo {
//                LittleLemonLogo(bindingVariable: $showLogo)
//            }
//        }
//    }
//}
///*The LittleLemonLogo view will be configured as follows:*/
//struct LittleLemonLogo: View {
//    @Binding var bindingVariable:Bool
//    var body: some View {
//        VStack {
//            Image("littleLemonLogo")
//            Button(action: {
//                bindingVariable.toggle()
//            }, label: {
//                Text("Toggle Logo Visibility")
//                  .font(.title2)
//            })
//        }
//    }
//}
/* Once the button is tapped, the logo will disappear. */





/* ObservableObject and ObservedObject. */
//class MyClass:ObservableObject {
//    @Published var showLogo = true
//}
//struct ContentView: View {
//    @ObservedObject var myClass = MyClass()
//    var body: some View {
//        VStack {
//            if myClass.showLogo {
//                LittleLemonLogo(myClass: myClass)
//            }
//        }
//    }
//}
//struct LittleLemonLogo: View {
//    var myClass:MyClass
//    var body: some View {
//        VStack {
//            Image("littleLemonLogo")
//            Button(action: {
//                myClass.showLogo.toggle()
//            }, label: {
//                Text("Toggle Logo Visibility OFF")
//                    .font(.title2)
//            })
//        }
//    }
//}




//struct ReservationForm: View {
//    @State var customerName:String = ""
//    var body: some View {
//        Form {
//            TextField("Type Your Name",
//                text:$customerName,
//                onEditingChanged: { status in
//                    print(status)
//                })
//            .onSubmit({
//                print("submitted")
//            })
//            .onChange(of: customerName, perform: { newValue in
//                print(newValue)
//            })
//
//        }
//        .padding()
//    }
//}
//struct ReservationForm_Previews: PreviewProvider {
//    static var previews: some View {
//        ReservationForm()
//    }
//}




//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            Circle()
//                .foregroundColor(Color.gray)
//            Circle()
//                .scale(x: 0.75, y: 0.75)
//                .foregroundColor(Color.red)
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text ("Hello, world!")
//                HStack {
//                    Button("One"){}
//                    Button("Two"){}
//                }
//            }
//            
//        }
//    }
//}



//struct MainView: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                ZStack {
//                    HStack(spacing: 8) {
//                        Text("Demo").scaledToFit().frame(
//                            width: 100, height: 100, alignment: .center)
//                        VStack(spacing: 10) {
//                            Text("Little Lemon").font(.title)
//                            Text("Tomato Tortellini, Bottarga and Carbonara ").font(.title3)
//                                .multilineTextAlignment(.center)
//                        }// :- VStack
//                            .padding()
//                    }  // :- HStack
//                    .padding()
//                }  // :- ZStack
//            }
//        }
//    }
//}


//Swift ui basic Controls cheat sheet
//struct ContentView: View {
//    
//    var body: some View {
//        
//        Button(role: .destructive) {
//            print("do something!")
//        } label: {
//            HStack {
//                Image(systemName: "trash")
//                Text("")
//            }
//        }
//    }
//}


//struct ContentView: View {
//
//    @State var isShowing = true // toggle state – A toggle won’t work unless you’ve give a truth state
//    
//    var body: some View {
//
//          Toggle(isOn: $isShowing) {
//                Text("Hello World")
//        }
//    }
//}



//struct ContentVIew: View {
//@State private var value = 1
//var body: some View {
//        NavigationView {
//            VStack {
//                Text("Current value: \(value)")
//                Stepper("Number of guests", value: $value, in:1...20)
//            }
//            .padding()
//        .navigationTitle("Reservation form")
//        }
//    }
//}



//struct ContentView: View {
//    
//    @State private var size: CGFloat = 0.1
//    
//    var body: some View {
//        VStack {
//            Text("Little Lemon").font(.system(size: size * 50))
//            Slider(value: $size)
//            
//        }
//        .padding()
//    }
//}


//struct ContentView: View {
//    @State var selectedDate = Date()
//    var dateClosedRange: ClosedRange<Date> {
//        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
//        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
//        return min...max
//    }
//    var body: some View {
//        NavigationView {
//            Form {
//                Section {
//                    DatePicker(
//                        selection: $selectedDate,
//                        in: dateClosedRange,
//                        displayedComponents: .date,
//                        label: { Text("Due Date") }
//                    )
//                }
//            }
//        }
//    }
//}




//struct SwiftUIView: View {
//    var body: some View {
//        Label("Menu", systemImage: "fork.knife")
//            .labelStyle(.titleAndIcon)
//    }
//}
//
///*Adding calendar*/
//struct ReservationCalendar: View {
//    @State var reservationDate = Date()
//    var body: some View {
//        Form {
//            HStack {
//                DatePicker(
//                    selection: $reservationDate, in: Date()...,
//                    displayedComponents: [.date, .hourAndMinute]
//                ) {}
//                Button(action: { print("do something!") }) {
//                    HStack {
//                        Image(systemName: "arrow.right.circle")
//                        Text("Done")
//                    }
//                }.padding(20)
//            }
//            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
//        }
//    }
//}
//struct ReservationCalendar_Previews: PreviewProvider {
//    static var previews: some View {
//        ReservationCalendar()
//    }
//}



//struct ParentView: View {
//    var body: some View {
//        HStack {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 50, height: 50)
//   
//            Text("Rectangle One")
//                .foregroundColor(.white)
//                .padding(20)
//                .background(Color.yellow)
//               
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 30)
//        }
//    }
//}
//
//struct ParentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ParentView()
//    }
//}



//Dynamic elements
//    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
//struct ContentView: View {
//    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
//    var body: some View {
//        List {
//            ForEach(elements) {element in
//                Text(element)
//            }
//        }
//        .padding()
//    }
//}
//
//But there will be an error. To solve this:
//extension String: Identifiable {
//    public var id: String {
//        self
//    }
//}
//
//
//
//
//OR
//
//struct ContentView: View {
//    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
//    var body: some View {
//
//        List {
//            ForEach(elements, id: \.self) {element in
//                Text(element)
//            }
//        }
//        .padding()
//    }
//}



//Header and footer for lists
//struct ContentView: View {
//    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
//    var body: some View {
//        List {
//            Section(header: Text("Important Information")) {
//                Text("This List shows information about our restaurant pages")
//                    .font(.headline)
//            }
//
//            ForEach(elements, id: \.self) {element in
//                Text(element)
//            }
//
//            Section(footer: Text("More Information")) {
//                Text("Contact us as (212) 555 3231")
//            }
//        }
//        .padding()
//    }
//}



//Getting rid of the List grey background
//SwiftUI renders lists with a grey background. If you want to get rid of this background, add the following modifier to the List:
//        .scrollContentBackground(.hidden)
//
//
//
//struct ContentView: View {
//    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
//    var body: some View {
//        List {
//            Section(header: Text("Important Information")) {
//                Text("This List shows information about our restaurant pages")
//                    .font(.headline)
//            }
//
//            ForEach(elements, id: \.self) {element in
//                NavigationLink(destination: DetailView()) {
//                    Text(element)
//                }
//            }
//
//            Section(footer: Text("More Information")) {
//                Text("Contact us as (212) 555 3231")
//            }
//        }
//        .scrollContentBackground(.hidden)
//        .padding()
//    }
//}



//import SwiftUI
//struct ContentView: View {
//    @ObservedObject private var model = Model()
//    
//    var body: some View {
//        VStack {
//            List {
//                ForEach(model.meals) { item in
//                    Text(item.name)
//                }
//            }
//        }
//    }
//}
//
//struct Item: Identifiable {
//    let id = UUID()
//    let name: String
//}
//
//class Model: ObservableObject {
//    @Published var meals: [Item] = menuItems()
//
//    static func menuItems() -> [Item] {
//        return [
//            Item(name: "Lasagna"),
//            Item(name: "Fettuccini Alfredo"),
//            Item(name: "Spaghetti"),
//            Item(name: "Avocado Toast"),
//            Item(name: "Tortellini"),
//            Item(name: "Pizza")
//        ]
//    }
//}



//struct ContentView: View {
//  var body: some View {
//    Text("Little Lemon Restaurant").onTapGesture {
//        print("Text Tapped!")
//    }
//  }
//}
//
//struct ContentView: View {
//  var body: some View {
//    Text("Little Lemon Restaurant").onTapGesture(count:2) {
//        print("Text Tapped!")
//    }
//  }
//}
//
//struct ContentView: View {
//  var body: some View {
//    Text("Little Lemon Restaurant").onLongPressGesture {
//        print("Long Press Detected!")
//    }
//  }
//}
//
//struct ContentView: View {
//    var body: some View {
//        Text("Little Lemon Restaurant")
//            .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {
//                print("Long Press Detected!")
//            },
//            onPressingChanged: { state in
//                print (state)
//            })
//    }
//}
//
//struct ContentView: View {
//    @State private var offsetValue = CGSize.zero
//    var body: some View {
//        Image("littleLemonLogo")
//        .offset(offsetValue)
//            .gesture(
//                DragGesture()
//                    .onChanged { gesture in
//                        offsetValue = gesture.translation
//                    }
//            )
//    }
//}
//
//struct ContentView: View {
//    @State private var amount = Angle.zero
//    @State private var finalAmount = Angle.zero
//    var body: some View {
//        Image("littleLemonLogo")
//            .rotationEffect(amount + finalAmount)
//            .gesture(
//                RotationGesture()
//                    .onChanged { value in
//                        amount = value
//                    }
//                    .onEnded { value in
//                        finalAmount += amount
//                        amount = .zero
//                    }
//            )
//    }
//}
//
//
//struct ContentView: View {
//    @State private var amount = 0.0
//    @State private var finalAmount = 1.0
//
//
//    var body: some View {
//        Image("littleLemonRestaurant")
//            .scaleEffect(finalAmount + amount)
//            .gesture(
//        MagnificationGesture()
//                    .onChanged { value in
//                        amount = value – 1
//                    }
//                    .onEnded { value in
//                        finalAmount += amount
//                        amount = 0
//                    }
//            )
//    }
//}
//
//struct ContentView: View {
//    @State private var message = "You can long press and then drag"
//
//
//    var body: some View {
//        let longPress = LongPressGesture()
//            .onEnded { _ in
//            print("Long Press detected. Now you can drag me")
//            }
//
//
//        let drag = DragGesture()
//            .onChanged{ _ in
//                print ("Dragging…")
//            }
//
//
//        let sequence = longPress.sequenced(before: drag)
//
//
//        Image("littleLemonLogo")
//        .gesture(sequence)
//    }
//}



//There are other more advanced gestures that can be used:
//* SimultaneousGesture contains two gestures that can happen at the same time with neither of them preceding the other.
//* ExclusiveGesture is a gesture that consists of two gestures where only one of them can succeed.
//struct GestureRecognizer: View {
//    @State private var flag = false
//    var body: some View {
//        Text("Tap Me")
//            .font(.largeTitle)
//            .foregroundColor(.white)
//            .padding(15)
//            .background(flag ? Color.green : Color.yellow)
//            .onTapGesture {
//                flag.toggle()
//            }
//    }
//}



//withAnimation(.easeInOut())
//struct LocationsView: View {
//    @EnvironmentObject var model:Model
//    var body: some View {
//        VStack {
//            LittleLemonLogo()
//                .padding(.top, 50)
//
//            Text (model.displayingReservationForm ? "Reservation Details" :
//                    "Select a location")
//            .padding([.leading, .trailing], 40)
//            .padding([.top, .bottom], 8)
//            .background(Color.gray.opacity(0.2))
//            .cornerRadius(20)
//
//            NavigationView {
//                // EmptyView()
//                List(model.restaurants, id: \.self) { restaurant in
//                    NavigationLink(destination: ReservationForm(restaurant)) {
//                        RestaurantView(restaurant)
//                    }
//                }
//                .navigationBarTitle("")
//                .navigationBarHidden(true)
//            }
//
//            .onDisappear{
//                if model.tabBarChanged { return }
//                // this changes the phrase from "Select a location"
//                // to "RESERVATION"
//                model.displayingReservationForm = true
//            }
//
//            .frame(maxHeight: .infinity)
//
//            // SwiftUI has this space between the title and the list
//            // that is amost impossible to remove without incurring
//            // into complex steps that run out of the scope of this
//            // course, so, this is a hack, to bring the list up
//            // try to comment this line and see what happens.
//            .padding(.top, -10)
//
//            // makes the list background invisible, default is gray
//            .scrollContentBackground(.hidden)
//        }
//
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationsView().environmentObject(Model())
//    }
//}



//var count = 10
//if count < 5 {
//    count += 1
//} else if count > 10 {
//    count -= 1
//}
//print(count)
///* Error handling */
//
//do {
//    let image = try loadImageThrowableFunction("image.png")
//}
//catch {}
//let image = try! loadImageThrowableFunction("image.png")
//let image = try? loadImageThrowableFunction("image.png")
//if let image = image {
//    // Image was successfully loaded
//}
//else {
//    // Error happened
//}




//Finding a sum of all numbers from 1 to n
//Another common use case is finding a sum of all numbers in some range.
//Suppose the range, in this case, is from 1 to n.
//The implementation using the while loop again is very similar to the first example:
//var n = 6
//var sum = 0
//
//while n > 0 {
//    sum += n
//    n -= 1
//}
//Implementation becomes a bit more complex with one more variable defined, namely sum. Now instead of a print statement inside the while loop, n is now added to the sum each time.
//Let’s now discuss the process of making the implementation recursive using the three-step process again:
//1. Base case: all the numbers from 1 to n have to be summed. Meaning that n has to be reduced by 1 each time until it is equal to 1, after that the algorithm has to stop. In other words, the algorithm must stop when n becomes 0, which will be the base case.
//2. Perform work to reach the base case: in this instance, the work entails summing up the numbers.
//3. Repeat the process: each time creating the sum with a call to the same function reducing n by 1.
//The implementation of the algorithm becomes:
//func output(n: Int) -> Int {
//    if(n==0) { // step 1 base case
//        return 0
//    }
//    else {
//        return n + output(n: n - 1) // step 2 and step 3
//    }
//}
//
//The function output again expects a single argument n but this time it returns the result as well. The function implementation first checks for the base case returning 0 if it is met. Afterward, it combines steps 2 and steps 3 of the recursive algorithm into one line of code, calculating a sum and calling the same function with the reduced n value.
//In the end, both code examples would output 21 when n=6.
//Notice that in the example, the while loop implementation needs two values, while the recursive implementation only uses n. There is no additional sum variable defined.



//Mapping is a process of converting an array from one type to another.
//struct User {
//    let id: Int
//    let name: String
//}
//
//let users = [
//    User(id: 1, name: "John"),
//    User(id: 2, name: "Tom")
//]
//let usersIds = users.map { user in
//    return user.id
//}
///*or shorter version */
//let usersIds = users.map { $0.id }
//
//
//
//
///*FlatMap is useful in:
//1. When the mapping closure returns an array of elements rather than just a single element,
//2. The final resulting array must be a one-dimensional array. This means that there must not be an array inside of an array.
//*/
//struct User {
//    let id: Int
//    let name: String
//    let languages: [String]
//}
//
//let users = [
//    User(id: 1, name: "John", languages: ["English", "German"]),
//    User(id: 2, name: "Tom", languages: ["Russian", "Spanish"])
//]
//
//let allLanguages = users.flatMap { $0.languages }
///*Output:
//["English", "German", "Russian", "Spanish"] */



//struct Article {
//    let title: String
//    let isPublished: Bool
//}
//
//let articles = [
//    Article(title: "Breaking news", isPublished: true),
//    Article(title: "Local news", isPublished: true),
//    Article(title: "Unconfirmed", isPublished: false),
//]
//
//let unpublishedArticles = articles.filter { $0.isPublished == false }
//
//
//
//
//var numbers = [1, 4, 65, 3, -1]
//let sum = numbers.reduce(0) { $0 + $1 }
//
//
///* reduce is called with an initial value of 0 as there is no sum calculated before, and then with each iteration, it keeps adding the last result to a correct number. This simplifies the code and makes it more readable and reusable.*/




//struct Order {
//    let price: Int
//    let location: String
//}
// 
//func totalRevenueOf(orders: [Order],  location: String) -> Int {
//    let ordersAtLocation = orders.filter { $0.location == location }
//    print(ordersAtLocation)
//    let orderPrices = ordersAtLocation.map { $0.price }
//    print(orderPrices)
//    return orderPrices.reduce(0){ $1 + $0 }
//}
// 
//let orders = [
//    Order(price: 24, location: "New York"),
//    Order(price: 37, location: "San Francisco"),
//    Order(price: 101, location: "New York"),
//]
//
//let result = totalRevenueOf(orders: orders, location: "New York")
//print(result)




//let donationsInformation  = ["John" : 56, "Tom": 15, "Charlie": 104]
//let donationsTexts = donationsInformation.map { "\($0.key) has donated \($0.value) so far"}
//for text in donationsTexts {
//    print(text)
//}
//
//
//
//let donationsInformation = ["John": 56, "Tom": 15, "Charlie": 104]
//donationsInformation.map { "\($0.key) has donated \($0.value) so far" }
//    .forEach { print($0) }
//
//
//
//
//
//
//
//func sum(n: Int) -> Int {
//    if n == 0 {
//        return 0
//    }
//    return n + sum(n: n - 1)
//}
//let result = sum(n: 6)
//print(result)
//
//
//
//
//
//
//array.map { String($0) }.filter { $0.count > 1 }



///*Unit testing example*/
//import XCTest
//@testable import LittleLemon
//
//final class LittleLemonTests: XCTestCase {
//    func test_recipeOrderCount_init_orderCountEqualsZero() {
//        let recipe = Recipe()
//        XCTAssert(recipe.orderCount == 0)
//    }
//    func test_recipeOrderCount_incrementOrderCount_orderCountEqualsOne() {
//        var recipe = Recipe()
//        recipe.incrementOrderCount()
//        XCTAssert(recipe.orderCount == 1)
//    }
//}
//
//
///*Example of using fake*/
//import Foundation
//import XCTest
//
//protocol NetworkManager {
//    func getMealsList() -> [String]
//}
//
//class MenuManager {
//
//    let networkManager: NetworkManager
//
//    init(networkManager: NetworkManager) {
//        self.networkManager = networkManager
//    }
//
//    func allMeals() -> String {
//        return networkManager.getMealsList().joined(separator: ",")
//    }
//}
///*To skip getting response from the server, the following fake implementation can be created that returns a predefined list of local meals items as follows*/
//class FakeNetworkManager: NetworkManager {
//    func getMealsList() -> [String] {
//        return ["Soda", "Milkshake"]
//    }
//}
///*The FakeNetworkManager class extends the NetworkManager protocol and implements the getMealsList method which returns a predefined list of meals.
//Note: The fake loads data from the local file in the real scenario, but to simplify the example, it returns a predefined array.*/
//
///*Implementing menu using fake*/
//let menu = MenuManager(networkManager: FakeNetworkManager())
//let allMeals = menu.allMeals()
//XCTAssertEqual(allMeals, "Soda,Milkshake")




///*What are mocks?
//A mock is like a fake in a way that the real object is replaced with a simplified version of the complex code. But the difference between a fake and a mock is that a mock also tracks how many times a method is called and what parameters were used while calling the method.*/
//import Foundation
//import XCTest
//
//protocol NetworkManager {
//    func createNewsletterSubscription(email: String)
//}
//
//class NewsletterManager {
//    let networkManager: NetworkManager
//    init(networkManager: NetworkManager) {
//        self.networkManager = networkManager
//    }
//    func subscribe(email: String) {
//        networkManager.createNewsletterSubscription(email: email)
//    }
//}
//
///*Implementing a unit test*/
//class MockNetworkManager: NetworkManager {
//    var howManyTimesFunctionWasCalled = 0
//    var emailTheFunctionReceived = ""
//
//    func createNewsletterSubscription(email: String) {
//        howManyTimesFunctionWasCalled += 1
//        emailTheFunctionReceived = email
//    }
//}
//let mockNetworkManager = MockNetworkManager()
//let newsletter = NewsletterManager(networkManager: mockNetworkManager)
//let email = "example@email.com"
//newsletter.subscribe(email: email)
//XCTAssertEqual(mockNetworkManager.howManyTimesFunctionWasCalled, 1)
//XCTAssertEqual(mockNetworkManager.emailTheFunctionReceived, email)




    ////Unit testing
    //import XCTest
    //@testable import ImplementUnitTesting
    //
    //final class ImplementUnitTestingTests: XCTestCase {
    //    func test_calculateTotal_salesTaxTwentyPercent() {
    //        let items = [CheckoutItem(name: "Chips", price: 49), CheckoutItem(name: "Cola", price: 100), CheckoutItem(name: "Ketchup", price: 400), CheckoutItem(name: "Pizza", price: 982)]
    //        let taxPercentage = 20
    //        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
    //        print(totalToPay)
    //        XCTAssertEqual(totalToPay,1837)
    //    }
    //    func testExample() {
    //     let array = [1, 2, 3, 4]
    //     let sum = array.reduce(0){$0 + $1}
    //     XCTAssertNotEqual(sum, 9)
    //    }
    //}
    //
    //
    //
    //
    //                    .toolbar {
    //                        ToolbarItem {
    //                                NavigationLink(destination:MenuItemsOptionView()){Image(systemName: "slider.horizontal.3")}
    //                                    .frame(maxWidth: .infinity, alignment: .trailing)
    //
    //                        }
    //                    }
    //                    .navigationTitle("Menu")




//React native example flatlist:
//import React from 'react';
//
//import { View, Text, StyleSheet, SectionList } from 'react-native';
//
//const menuItemsToDisplay = [
//  {
//    title: 'Appetizers',
//    data: [
//      'Hummus',
//      'Moutabal',
//      'Falafel',
//      'Marinated Olives',
//      'Kofta',
//      'Eggplant Salad',
//    ],
//  },
//  {
//    title: 'Main Dishes',
//    data: ['Lentil Burger', 'Smoked Salmon', 'Kofta Burger', 'Turkish Kebab'],
//  },
//  {
//    title: 'Sides',
//    data: [
//      'Fries',
//      'Buttered Rice',
//      'Bread Sticks',
//      'Pita Pocket',
//      'Lentil Soup',
//      'Greek Salad',
//      'Rice Pilaf',
//    ],
//  },
//  {
//    title: 'Desserts',
//    data: ['Baklava', 'Tartufo', 'Tiramisu', 'Panna Cotta'],
//  },
//];
//
//const Item = ({ name, price }) => (
//  <View style={menuStyles.innerContainer}>
//    <Text style={menuStyles.itemText}>{name}</Text>
//    <Text style={menuStyles.itemText}>{price}</Text>
//  </View>
//);
//
//const Separator = () => <View style={menuStyles.separator} />;
//
//const Footer = () => (
//  <Text style={menuStyles.footerText}>
//    All Rights Reserved by Little Lemon 2022
//  </Text>
//);
//
//const MenuItems = () => {
//  const renderItem = ({ item }) => <Item name={item} />;
//
//  const renderSectionHeader = ({ section: { title } }) => (
//    <Text style={menuStyles.sectionHeader}>{title} </Text>
//  );
//
//  return (
//    <View style={menuStyles.container}>
//      <SectionList
//        keyExtractor={(item, index) => item + index}
//        sections={menuItemsToDisplay}
//        renderItem={renderItem}
//        renderSectionHeader={renderSectionHeader}
//        ListFooterComponent={Footer}
//        ItemSeparatorComponent={Separator}></SectionList>
//    </View>
//  );
//};
//
//// Add styles to the component
//const menuStyles = StyleSheet.create({
//  container: {
//    flex: 0.95,
//  },
//  innerContainer: {
//    paddingHorizontal: 40,
//    paddingVertical: 20,
//    backgroundColor: '#333333',
//  },
//  sectionHeader: {
//    backgroundColor: '#fbdabb',
//    color: '#333333',
//    fontSize: 34,
//    flexWrap: 'wrap',
//    textAlign: 'center',
//  },
//  itemText: {
//    color: '#F4CE14',
//    fontSize: 32,
//  },
//  separator: {
//    borderBottomWidth: 1,
//    borderColor: '#EDEFEE',
//  },
//  footerText: {
//    color: '#EDEFEE',
//    fontSize: 20,
//    flexWrap: 'wrap',
//    textAlign: 'center',
//  },
//});
//
//export default MenuItems;
//
