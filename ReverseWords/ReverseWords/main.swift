//
//  main.swift
//  ReverseWords
//
//  Created by qingfeng on 2018/8/23.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import Foundation

func swapElement<T>(_ chars: inout [T], _ p: Int, _ q: Int) {
    (chars[p], chars[q]) = (chars[q], chars[p])
}

func reverseString<T>(_ chars: inout [T], start: Int, end: Int) {
    var start = start
    var end = end
    while start < end {
        swapElement(&chars, start, end)
        start += 1
        end -= 1
    }
}

var chs = ["1","2","3"]
reverseString(&chs, start: 0, end: chs.count - 1)
print(chs)


func reverseWords(_ strng: String?) -> String? {
    guard strng != nil else {
        return nil
    }
    var chars = Array(strng!)
    var start = 0
    reverseString(&chars, start: 0, end: chars.count - 1)
    
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i + 1] == " " {
            reverseString(&chars, start: start, end: i)
            start = i + 2
        }
    }
    return String(chars)
}

print(reverseWords("Hello, World!") as Any)

