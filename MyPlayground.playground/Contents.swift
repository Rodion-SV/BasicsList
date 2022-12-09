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
var password = "1234"
let passcode = Int(password)
print("The passcode of the app is \(passcode!).")
password = "hello world"
if let code = Int(password) {
  print("The passcode of the app is \(code).")
} else {
  print("Invalid passcode!")
}
let accessCode: Int
if let code = Int(password) {
  accessCode = code
} else {
  accessCode = 1111
}
print("The passcode of the app is \(accessCode).")
let firstPassword = "hello"
let secondPassword = "world"
if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  print(
    "The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode)."
  )
} else {
  print("Invalid passcodes!")
}
let firstAccessCode: Int
let secondAccessCode: Int
if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  firstAccessCode = firstPasscode
  secondAccessCode = secondPasscode
} else {
  firstAccessCode = 1111
  secondAccessCode = 2222
}
print(
  "The first passcode of the app is \(firstAccessCode) and the second passcode of the app is \(secondAccessCode)."
)

/*Output:
 The passcode of the app is 1234.
 Invalid passcode!
 The passcode of the app is 1111.
 Invalid passcodes!
 The first passcode of the app is 1111 and the second passcode of the app is 2222.*/
