//
//  main.swift
//  TwoSum
//
//  Created by liyiping on 2018/7/23.
//  Copyright © 2018年 情风. All rights reserved.
//

import Foundation
/*
 给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。
 
 你可以假设每个输入只对应一种答案，且同样的元素不能被重复利用。
 */
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0...nums.count - 1 {
        for j in i...nums.count - 1 {
            if nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return []
}
/*
 最直接的方式，时间复杂度:n²
 
 还可以通过hash函数来降低时间复杂度
 */
print(twoSum([1, 3, 4, 6, 9, 8], 15))
