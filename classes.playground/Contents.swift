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
        var run: Bool = false
        print("hibernating / \(run)")
    }
    
    override func eat() {
        print("eating fish")
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
        var run = true
        print("\(furColor) / \(run)")
    }
    
    override func eat() {
        super.eat()
        print("eat seals!")
    }
}

let anotherBear = PolarBear()
anotherBear.hibernate()
