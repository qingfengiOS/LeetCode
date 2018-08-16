//
//  main.swift
//  FindMaxConsecutiveOnes
//
//  Created by qingfengiOS on 2018/8/16.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    
    var globalMax = 0
    var localMax = 0
    for num in nums {
        if num == 1 {
            localMax += 1
            globalMax = max(localMax, globalMax)
        } else {
            localMax = 0
        }
    }

    return globalMax
}

print(findMaxConsecutiveOnes([1,1,0,1,1,1]))

