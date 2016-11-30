
func strtupzer(string: String) -> String {
    
    let vowels:  [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var newString = ""
    var x = 0
    
    for i in string.characters {
        var consonant: Bool
        
        if vowels.contains(i) {
            x += 1
            consonant = false
        } else {
            consonant = true
        }
        
        if !consonant && x % 2 == 0 {
        newString.append(i)
        }
        
        if consonant {
            newString.append(i)
        }
        
        //switch consant, x % 2 == 0
    
    }
    return newString
}


strtupzer(string: "goalie")
strtupzer(string: "Amy Amy")
strtupzer(string: "that was crazy")
