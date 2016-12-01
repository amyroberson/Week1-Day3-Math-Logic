enum Answer {
    case fizz
    case buzz
    case number(Int)
    case fizzBuzz
}

func transform(n: Int) -> Answer {
    switch (n % 5 == 0, n % 3 == 0) {
    case (false, true):
        return .fizz
    case (true, false):
        return .buzz
    case (true, true):
        return .fizzBuzz
    default:
        return .number(n)
    }
}
transform(n: 7)
transform(n: 15)
transform(n: 21)
transform(n: 3)
transform(n: 5)