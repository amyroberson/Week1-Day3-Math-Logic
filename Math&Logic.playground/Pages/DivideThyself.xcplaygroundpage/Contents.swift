func pow(x: Int, y: Int) -> Int {
    var result = x
    for _ in 0..<y-1 {
        result = result * x
    }
    return result
}

func divideSelf(number: Int) -> Bool{
    if number == 0 {
        return false
    }
    
    var x = number
    var totalDigits = 0
    
    while x > 0 {
        x = x / 10
        totalDigits += 1
    }
    
    let count = totalDigits - 1
    var remainingDigits = number
    
    // assume the number is divisible
    var isDivisible = true
    var i = 0
    while isDivisible && i < count - 1 {
        let placeholder = pow(x: 10, y: count - i)
        
        i += 1
        
        if placeholder == 1 {
            isDivisible = true
            continue
        }
        
        let digit = remainingDigits / placeholder
        
        if (number % digit != 0) {
            isDivisible = false
            continue
        }
        
        remainingDigits = remainingDigits % placeholder
    }

    return isDivisible
    
/*   Commented out, but saved to show original idea 
     
     switch count {
        case 1:
            if number > 0{
                return true
            }
        case 2:
            var tens = t % 10
            var ones = t / 10
        // make sure to check that none are 0
        case 3:
            var remainder = number % 100
            var hundreds = number / 100
            var tens = t % 10
            var ones = t / 10
        // make sure to check that none are 0

        case 4:
            var thousandR = number2 % 1000
            var thousand = number2 / 1000
            var h = number2 % 100
            var w = number2 / 100
            var hundreds = w % 10
            var tens = h / 10
            var ones = h % 10

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
      }
 */
}

divideSelf(number: 0)
divideSelf(number: 22222222222222)
divideSelf(number: 128)
divideSelf(number: 2448)


divideSelf(number: 6743)
divideSelf(number: 2147483647)

