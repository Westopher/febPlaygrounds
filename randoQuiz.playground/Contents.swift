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


