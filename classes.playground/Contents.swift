import UIKit


class Mammal {
    func sleep() {
        print("sleeping")
    }
    func eat() {
        print("eating")
    }
}

let someMammal = Mammal()
someMammal.eat()
someMammal.sleep()


class Bear: Mammal {
    var furColor = ""
    
    func hibernate() {
        print("hibernating")
    }
    
    override func eat() {
        var fish = "salmon"
        print("eating \(fish)!!")
    }
}

let aBear = Bear()
aBear.eat()
print(aBear.hibernate())

//override init is how to change properties, whereas override func is how you change functions.
class PolarBear: Bear {
    override init() {
        super.init()
        furColor = "white"
    }
    
    override func eat() {
        super.eat()
        var fish = "whale"
        print("eat \(fish)!")
        
    }
}

let anotherBear = PolarBear()
anotherBear.hibernate()

anotherBear.eat()


//optional binding

var words:String?

if let myString = words {
    print(myString)
} else {
    print("no string")
}


var myDictionary = ["key":"value", "k":"v", "ke":"va", "y":"ue"]

if let firstKey = myDictionary["k"] {
    print(firstKey)
} else {
    print("no value")
}


