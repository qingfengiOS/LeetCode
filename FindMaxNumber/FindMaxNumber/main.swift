//
//  main.swift
//  FindMaxNumber
//
//  Created by liyiping on 2018/8/11.
//  Copyright © 2018年 情风. All rights reserved.
//

import Foundation


/// 一次循环找出数组中最大的两个元素
///
/// - Parameter array: 原数组
/// - Returns: 结果元祖（firstMax：最大，secondMax：第二大）
func findMaxNumber(_ array: Array<Int>) -> (firstMax: Int, secondMax: Int) {
    
    if array.count < 2 {
        return (0, 0)
    }
    
    var numberOne: Int
    var numberTwo: Int
    
    if array[0] >= array[1] {
        numberOne = array[0]
        numberTwo = array[1]
    } else {
        numberOne = array[1]
        numberTwo = array[0]
    }
    
    for i in 2..<array.count {
        if array[i] > numberTwo {
            if array[i] > numberOne {
                numberTwo = numberOne
                numberOne = array[i]
            } else {
                numberTwo = array[i]
            }
        }
    }
    return (numberOne,numberTwo)
}

print(findMaxNumber([1,3,4,88,44,66,23,99]))

