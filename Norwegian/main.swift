//
//  main.swift
//  Norwegian
//
//  Created by Andrew Woods on 2017/03/23.
//  Copyright © 2017年 Andrew Woods. All rights reserved.
//

import Foundation

/*
 This program is to help me start to learn Norwegian (writing/bokmål)
 */

print("Hallo, verden!")

let myDictionary = DictionaryNode()

myDictionary.add(word: "jeg")
print(myDictionary.search(for: "jeg"))
