//
//  main.swift
//  MajorElement
//
//  Created by qingfengiOS on 2018/8/15.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//
//169 求众数
import Foundation

func majorElement(_ nums: [Int]) -> Int? {
    if nums.count == 0 {
        return nil
    }
    
    var major = nums.first!
    var sum = 0
    
    for num in nums {
        if num == major {
            sum += 1
        } else {
            sum -= 1
        }
        if sum == 0 {
            major = num
            sum = 1
        }
    }

    return major
}


func majorElement2(_ nums: [Int]) -> Int? {
    if nums.count == 0 {
        return nil
    }
    var recodeDic:Dictionary<Int, Int> = Dictionary()
    
    for num in nums {
        if recodeDic[num] != nil {
            (recodeDic[num])! += 1
        } else {
            recodeDic[num] = 1
        }
    }
    
    var maxValue: Int = 0
    var major: Int = 0
    for (key, value) in recodeDic {
        if value > maxValue {
            maxValue = value
            major = key
        }
    }
    
    return major
}


print(majorElement([1,2,3,1,2,1,1]) as Any)
print(majorElement2([1,2,3,1,2,1,1]) as Any)

