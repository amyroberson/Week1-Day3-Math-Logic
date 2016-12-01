
enum Answer {
    case fizz
    case buzz
    case number(Int)
    case fizzBuzz
}

func transform(n: Int) -> Answer {
    
    if n % 5 == 0 && n % 3 == 0 {
        return .fizzBuzz
    } else if n % 5 == 0 {
        return .buzz
    } else if n % 3 == 0 {
        return .fizz
    } else {
        return .number(n)
    }
}

transform(n: 7)
transform(n: 15)
transform(n: 21)
transform(n: 3)
transform(n: 5)