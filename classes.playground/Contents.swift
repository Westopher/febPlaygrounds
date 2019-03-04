import UIKit


class Mammal {
    func sleep() {
        print("sleeping")
    }
    func eat() {
        print("eating")
    } }
let someMammal = Mammal()
someMammal.eat()
someMammal.sleep()


class Bear: Mammal {
    func hibernate() {
        print("hibernating")
    }
    
    override func eat() {
        print("eating fish")
    }
}

let aBear = Bear()
aBear.eat()


sfbdb

