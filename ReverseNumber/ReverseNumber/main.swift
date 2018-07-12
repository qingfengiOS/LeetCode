//
//  main.swift
//  ReverseNumber
//
//  Created by liyiping on 2018/7/12.
//  Copyright © 2018年 情风. All rights reserved.
//

import Foundation


/// 反转整数
///
/// - Parameter x: 原来数
/// - Returns: 反转之后的数
func reverseNuber(_ x: inout Int) -> Int {
    var result = 0
    while x != 0 {
        result = result * 10 + x % 10 //每次都在原来结果的基础上扩大10倍，加上余数
        x = x / 10 //除10
    }
    return result
}

var a = 1230
print(reverseNuber(&a))

var b = -1230
print(reverseNuber(&b))


