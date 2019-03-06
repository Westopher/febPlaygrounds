import UIKit
//
//
//class Mammal {
//    func sleep() {
//        print("sleeping")
//    }
//    func eat() {
//        print("eating")
//    }
//}
//
//let someMammal = Mammal()
//someMammal.eat()
//someMammal.sleep()
//
//
//class Bear: Mammal {
//    var furColor = ""
//
//    func hibernate() {
//        print("hibernating")
//    }
//
//    override func eat() {
//        var fish = "salmon"
//        print("eating \(fish)!!")
//    }
//}
//
//let aBear = Bear()
//aBear.eat()
//print(aBear.hibernate())
//
////override init is how to change properties, whereas override func is how you change functions.
//class PolarBear: Bear {
//    override init() {
//        super.init()
//        furColor = "white"
//    }
//
//    override func eat() {
//        super.eat()
//        var fish = "whale"
//        print("eat \(fish)!")
//
//    }
//}
//
//let anotherBear = PolarBear()
//anotherBear.hibernate()
//
//anotherBear.eat()
//
//
////optional binding
//
//var words:String?
//
//if let myString = words {
//    print(myString)
//} else {
//    print("no string")
//}
//
//
//var myDictionary = ["key":"value", "k":"v", "ke":"va", "y":"ue"]
//
//if let firstKey = myDictionary["k"] {
//    print(firstKey)
//} else {
//    print("no value")
//}
//
//for _ in 0...5 {
//    print("hello")
//}
//
//for someVar in (1...6).reversed() {
//    print(someVar)
//}
//
//var array = ["New York", "New Jersey", "Montana"]
//
//for state in array {
//    print(state)
//}
//
//for arrIndex in 0...array.count-1 {
//    print("\(arrIndex) is \(array[arrIndex])")
//}


struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius is 0.0
print(boilingPointOfWater)
print(freezingPointOfWater)


class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "Nada")
    }
}

let namedMeat = Food(name: "Bacon")
// namedMeat's name is "Bacon"

let mysteryMeat = Food()
// mysteryMeat's name is "[Unnamed]"

print(namedMeat)
print(mysteryMeat)

