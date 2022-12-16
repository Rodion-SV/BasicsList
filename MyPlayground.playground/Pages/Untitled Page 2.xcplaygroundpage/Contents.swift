protocol Protocol1 {
  func output()
}

extension Protocol1 {
  func output() {
    print("Output")
  }
}

class Delegate: Protocol1 {
  func output() {
    print("Delegation")
  }
}

class Output {
  var delegate: Protocol1?
  func output() {
    delegate?.output()
  }
}

let output = Output()
output.delegate = Delegate()
output.output()

class Spaghetti {
    func fetchIngredients() {
        print("Spaghetti Ingredients")
    }
}
class SpaghettiMeatball: Spaghetti {
    override func fetchIngredients() {
        print("BBB")
        super.fetchIngredients()
        print("AAA")
    }
}
let spaghettiMeatball = SpaghettiMeatball()
spaghettiMeatball.fetchIngredients()

protocol Employee {
    var daysWorking: Int { get set }
}

struct Waiter: Employee {
    var daysWorking: Int
}

print(Waiter.self)


//What is the console output?
//
//1 point
//
//
//No delivery driver found.
//
//
//
//Driver name: George
//
//13.
//Question 13
