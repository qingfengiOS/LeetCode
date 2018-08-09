//
//  main.swift
//  EvenSquareNums
//
//  Created by qingfeng on 2018/8/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import Foundation

func evenSquareNums(from: Int, to: Int) -> [Int] {
    var res = [Int]()
    
    for num in from...to where num % 2 == 0 {
        if(from...to).contains(num * num) {
            res.append(num * num)
        }
    }
    return res
}

//常规方法
print(evenSquareNums(from: 0, to: 100))

//函数式编程
print((0...10).map { (num) in num * num }.filter { (num) in num % 2 == 0})

//极简函数式
print((0...10).map { $0 * $0 }.filter{ $0 % 2 == 0 })
