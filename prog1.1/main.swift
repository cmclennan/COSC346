//
//  main.swift
//  prog1.1
//
//  Created by Cameron McLennan on 7/11/18.
//  Copyright © 2018 Cameron McLennan. All rights reserved.
//

import Foundation

func emojicode(word: String) -> String {
    switch word.lowercased() {
    case "beer":
        return "\u{1F37A}"
    case "television", "tv":
        return "\u{1F4FA}"
    case "cryinglaughing":
        return "\u{1F602}"
    case "pokeytongue":
        return "\u{1F60B}"
    case "inniocentgrin":
        return "\u{1F60A}"
    case "hearteyes":
        return "\u{1F60D}"
    case "dissapointed":
        return "\u{1F61E}"
    
    default:
        return word
    }
    
}



func emojiate(str: String) -> String {
    var word: String = ""
    var result: String = ""
    
    for char: Character in str {
        if(String(char) >= "A" && String(char) <= "z") {
            word.append(char)
            
        } else {
            result += emojicode(word: word)
            result.append(char)
            word = ""
            
        }
    }
    result += emojicode(word: word)
    return result
}
let myString = "No TV and no beer make Homer something something."
let myString2 = "Emoji test: cryinglaughing | pokeytongue | inniocentgrin | hearteyes | dissapointed"
let emojiString = emojiate(str: myString);
let emojiString2 = emojiate(str: myString2);

print(myString)

print(emojiString)
print(emojiString2)

