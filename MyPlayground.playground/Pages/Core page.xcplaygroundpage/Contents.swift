/* How to read? Select the code you want and use "command + /" hotkeys in XCode to remove commentaries.*/

/* Simple temperature output*/
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

/*Output:
Today is Monday! Rise and shine!
The temperature on Monday is 75 F.
The temperature on Monday morning is 70 F.
The temperature on Monday evening is 80 F.
The average temperature this week is 75 F.
5.33*/

/*simple game score output*/
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

/*Output:
 The game's score is 10.
 The level's bonus score is 20.0.
 The game's final score is 30.
 The level's average score is 4.
 The level's average score is 4.9.*/

 /*Simple weather app modified*/
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

/*Output:
 Today is Monday.
 It is 6:15 PM.
 It is 6:15 PM on Monday.
 It is 6:15 PM PST.
 It is 6:15 PM PST on Monday.
 Today is Mon.
 It is 6:15 PM PST on Mon.*/

/*Weather app, paid subscription + settings check demo*/
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

/*Output:
 You are using the free version of the app. Buy the full version of the app to get access to all of its features.
 The coldest temperature is in the morning.
 Your selection of scale's temperature is Fahrenheit.
 Fahrenheit is being used as default. The app configured properly.
 The weather app is configured properly.
 App uses Fahrenheit degrees for its temperature.*/

/*Game's level checking*/
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

/*Output:
 Game's level is 1
 Game's level is 2
 It's a bonus level
 Game's level is 4*/

/*Paid levels checking in a game*/
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

/*Output:
 Play level 1.
 Play level 2.
 Skip bonus level 3.
 Play level 4.
 You have played all 4 free levels. Buy the game to play the remaining 6 levels.*/

/*Simple roll&dice*/
//var firstDice = Int.random(in: 1...6)
//var secondDice = Int.random(in: 1...6)
//while firstDice != secondDice {
//  firstDice = Int.random(in: 1...6)
//  secondDice = Int.random(in: 1...6)
//}
//print("You rolled a double \(firstDice).")

/*Output is random:
You rolled a double 2.*/

/*Another method of roll&dice*/
//var firstDice = 0
//var secondDice = 0
//repeat {
//  firstDice = Int.random(in: 1...6)
//  secondDice = Int.random(in: 1...6)
//} while firstDice != secondDice
//print("You rolled a double \(firstDice).")

/*Output is random:
 You rolled a double 6.*/

/*App passcodes*/
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

/*Output:
 The passcode of the app is 1234.
 Invalid passcode!
 The passcode of the app is 1111.
 Invalid passcodes!
 The first passcode of the app is 1111 and the second passcode of the app is 2222.*/

/* Paid levels in the game*/
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
 Buy an app to play full version.*/

/*Paid levels modification.*/
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
/*Output:
 Start playing the game!
 The first level's score is 10.
 The first level's score is 50.
 You have finished playing the free version of the game. Buy the game to play its full version.
 Game restarted!*/

/*Implementing user authentification.*/
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
/*Output:
 Invalid credentials!
 The password is pass and the passcode is 1111.*/

/*Imlementing forecast for a week.*/
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

/*Output:
 The temperature on Monday is 90°F.
 The temperature on Sunday is 100°F.
 You have access to the weather forecast of the whole week.
 Reset weekly temperatures for next week!
*/

/*Bringing enumerations*/

//let levelScores = [10, 20, 30, 40, 50, 60, 70]
//for (level, score) in levelScores.enumerated() {
//  print("The score of level \(level + 1) is \(score).")
//}
//var gameScore = 0
//for levelScore in levelScores {
//  gameScore += levelScore
//}
//print("The game's score is \(gameScore).")

/*Output:
 The score of level 1 is 10.
 The score of level 2 is 20.
 The score of level 3 is 30.
 The score of level 4 is 40.
 The score of level 5 is 50.
 The score of level 6 is 60.
 The score of level 7 is 70.
 The game's score is 280.*/

/*Simple doubles*/

//func double(passedValue: Int) {
//  let result = passedValue * 2
//  print("Double \(passedValue) is \(result)")
//}
//
//double(passedValue: 2)

/*Output:
Double 2 is 4
3
4*/

/*Strings usage*/

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

/*Output:
 Hi there Fred Bloggs
 Hi there Fred Bloggs
 Hi there Fred Bloggs
 Hello John Roberts 0
 Hello John Roberts 100*/

/*Adding currency content.*/

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

/*Output:
 100
 200
 300*/

/*Incrementing*/

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

/*Output:
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

/*
 Output:
 Maximum value is: 6
 Static INT value is 10
 Goldbars fun value is 100
 Hello Bertram
 */
