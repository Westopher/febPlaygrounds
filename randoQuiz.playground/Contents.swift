import Foundation


struct Spaceship {
    var name: String {
        willSet {
            print("I'm called \(newValue)!")
        }
    }
}

var serenity = Spaceship(name: "Serenity")
serenity.name = "TARDIS"


var myStr: String = "0"
myStr = "shiny"


var motto = "Bow ties are cool"
var newMotto = motto.replacingOccurrences(of: "Bow", with: "Neck")
print(newMotto)

let oneMillion = 1_000_000
let oneThousand = oneMillion / 0_1_0_0_0
print(oneThousand)


enum Weather {
    case sunny
    case cloudy
    case windy(speed: Int)
}

let today: Weather = .windy(speed: 10)

switch today {
case .sunny, .cloudy:
    print("It's not that windy")
case .windy(let blow) where blow >= 10:
    print("It's very windy")
default:
    print("It's a bit windy")
}

let i = "5"
let j = i + i

let num = UInt.min


var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    print("name was nil")
}

let nickName: String? = "West"
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"


let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 60, 1, 2, 3, 5, 8],
    "Square": [50, 1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(largest)
print(largestKind)

func greet(_ person: String, _ lunchSpecial: String) -> String {
    return "Hey, \(person), this is the lunch special \(lunchSpecial)"
}
print(greet("west", "carrots"))
