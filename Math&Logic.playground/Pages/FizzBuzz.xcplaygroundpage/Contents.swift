
enum Answer {
    case fizz
    case buzz
    case number(Int)
    case fizzBuzz
}


func transform(n: Int) -> Answer {
    let remainderBuzz = n % 5
    let remainderFizz = n % 3
    
    switch remainderBuzz {
        case 0:
            if remainderFizz == 0{
                return .fizzBuzz
            } else {
                return .buzz
            }
        case 1:
            if remainderFizz == 0 {
                return .fizz
            } else {
                return .number(n)
            }
        case 2:
            if remainderFizz == 0 {
                return .fizz
            } else {
                return .number(n)
        }

        case 3:
            if remainderFizz == 0 {
                return .fizz
            } else {
                return .number(n)
        }
        case 4:
            return .number(n)
        default:
            return .number(0)
    }
}

transform(n: 7)
transform(n: 15)
transform(n: 21)
transform(n: 3)
transform(n: 5)




