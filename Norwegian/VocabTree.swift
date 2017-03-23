//
//  VocabTree.swift
//  Norwegian
//
//  Created by Andrew Woods on 2017/03/23.
//  Copyright © 2017年 Andrew Woods. All rights reserved.
//

import Foundation

func get_alpha_value(of c: Character) -> Int {
    switch(c) {
    case "A", "a":
        return 0
    case "B", "b":
        return 1
    case "C", "c":
        return 2
    case "D", "d":
        return 3
    case "E", "e":
        return 4
    case "F", "f":
        return 5
    case "G", "g":
        return 6
    case "H", "h":
        return 7
    case "I", "i":
        return 8
    case "J", "j":
        return 9
    case "K", "k":
        return 10
    case "L", "l":
        return 11
    case "M", "m":
        return 12
    case "N", "n":
        return 13
    case "O", "o":
        return 14
    case "P", "p":
        return 15
    case "Q", "q":
        return 16
    case "R", "r":
        return 17
    case "S", "s":
        return 18
    case "T", "t":
        return 19
    case "U", "u":
        return 20
    case "V", "v":
        return 21
    case "W", "w":
        return 22
    case "X", "x":
        return 23
    case "Y", "y":
        return 24
    case "Z", "z":
        return 25
    case "Å", "å":
        return 26
    case "Ø", "ø":
        return 27
    case "Æ", "æ":
        return 28
    default:
        return -1
    }
}

class DictionaryNode {
    var children: Array<DictionaryNode?> = Array(repeating: nil, count: 29)
    var is_word: Bool = false
    var parent: DictionaryNode? = nil
    
    func root() -> DictionaryNode {
        if parent == nil {
            return self
        }
        else {
            return parent!.root()
        }
    }
    
    func add(word: String) {
        var b = root()
        for c in word.characters {
            let i = get_alpha_value(of: c)
            b.children[i] = DictionaryNode()
            b = b.children[i]!
        }
        b.is_word = true
    }
    
    func search(for word: String) -> Bool {
        var b: DictionaryNode? = root()
        for c in word.characters {
            b = b!.children[get_alpha_value(of: c)]
            if b == nil {
                return false
            }
        }
        return b!.is_word
    }
    
    
}

