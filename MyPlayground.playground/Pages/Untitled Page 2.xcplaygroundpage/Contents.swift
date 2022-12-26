//let berries = [
//    "strawberry",
//    "blueberry",
//    "grape",
//    "goji"
//]
//let result = berries
//    .filter { $0.count >= 6 }
//    .map { "healthy \($0)\n" }
//    .reduce("Berries:\n") { $0 + $1 }
//print(result)


//class Berry {
//}
//class Blueberry: Berry {
//}
//class Strawberry: Berry {
//}
//let berries = [Berry(), Blueberry(), Strawberry()]
//for berry in berries {
//    if berry is Berry {
//        print("Berry")
//    }
//    if berry is Blueberry {
//        print("Blueberry")
//    }
//    if berry is Strawberry {
//        print("Strawberry")
//    }
//}
//struct Book {
//    var pages = 0
//    mutating func incrementPages() {
//        pages += 1
//    }
//}
//var book = Book()
//book.incrementPages()

//protocol FoodDelivery {
//    func deliverFood()
//}
//struct Car: FoodDelivery {
//    func deliverFood() {
//        print("Deliver food by car")
//    }
//}
//class Restaurant {
//    var delegate: FoodDelivery?
//    func delegateDelivery() {
//        if let delegate = delegate {
//            delegate.deliverFood()
//            return
//        }
//        print("No delegate found.")
//    }
//}
//let restaurant = Restaurant()
//restaurant.delegate = Car()
//restaurant.delegateDelivery()
//protocol Game {
//    var title: String { get set }
//    func share()
//}
//OR:
//class BoardGame: Game {
//    var title: String
//    init(title: String) {
//        self.title = title
//    }
//    func share() {
//    }
//}
//OR:
//struct BoardGame: Game {
//    var title: String
//    func share() {
//    }
//}
//OR:
//class BoardGame: Game {
//    var title: String = ""
//    func share() {
//    }
//}

//protocol Berry {
//    var color: String { get }
//}
//class Blueberry: Berry {
//    let color = "blue"
//}
//class Strawberry: Berry {
//    let color = "red"
//}
//
//for berry in [Blueberry(), Strawberry()] {
//    if berry is Blueberry {
//        print("blueberry")
//    }
//    if let blueberry = berry as? Blueberry {
//        print(blueberry.color)
//    }
//    if berry is Strawberry {
//        print("strawberry")
//    }
//    if let strawberry = berry as? Strawberry {
//        print(strawberry.color)
//    }
//}

//protocol Game {
//    var title: String { get set }
//    func share()
//}
//struct BoardGame: Game {
//    var title: String
//    func share() {
//    }
//}
//protocol FoodDelivery {
//    func deliverFood()
//}
//struct Car: FoodDelivery {
//    func deliverFood() {
//        print("Deliver food by car")
//    }
//}
//class Restaurant {
//    var delegate: FoodDelivery?
//    func delegateDelivery() {
//        if let delegate = delegate {
//            delegate.deliverFood()
//            return
//        }
//        print("No delegate found.")
//    }
//}
//let restaurant = Restaurant()
//restaurant.delegateDelivery()
//restaurant.delegate = Car()
