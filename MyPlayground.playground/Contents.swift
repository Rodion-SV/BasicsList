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
//
///*Output:
//Today is Monday! Rise and shine!
//The temperature on Monday is 75 F.
//The temperature on Monday morning is 70 F.
//The temperature on Monday evening is 80 F.
//The average temperature this week is 75 F.
//5.33*/

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
let day = "Monday"
print("Today is \(day).")
let hour = "6"
let minutes = "15"
let period = "PM"
var time = hour + ":" + minutes + " " + period
print("It is \(time).")
print("It is \(time) on \(day).")
let timezone = "PST"
time += " \(timezone)"
print("It is \(time).")
time += " on \(day)"
print("It is \(time).")
let shortDay = day.prefix(3)
print("Today is \(shortDay).")
print("It is \(hour):\(minutes) \(period) \(timezone) on \(shortDay).")

/*Output:
 Today is Monday.
 It is 6:15 PM.
 It is 6:15 PM on Monday.
 It is 6:15 PM PST.
 It is 6:15 PM PST on Monday.
 Today is Mon.
 It is 6:15 PM PST on Mon.*/
