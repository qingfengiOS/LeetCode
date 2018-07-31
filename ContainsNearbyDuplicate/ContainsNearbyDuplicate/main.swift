//
//  main.swift
//  ContainsNearbyDuplicate
//
//  Created by qingfeng on 2018/7/31.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import Foundation

/// 219 给定一个整数数组和一个整数 k，判断数组中是否存在两个不同的索引 i 和 j，使得 nums [i] = nums [j]，并且 i 和 j 的差的绝对值最大为 k。
//时间复杂度: O(n), 空间复杂度: O(n)

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    
    //key是每个元素的值，value是数组的下标，每次使用当前下标减去上一次的下标和K作比较
    var recodDic: Dictionary<Int, Int> = Dictionary()
    for i in 0..<nums.count {
        guard let index = recodDic[nums[i]], i - index <= k else {
            recodDic[nums[i]] = i
            continue
        }
        return true
    }
    
    
    return false
}


print(containsNearbyDuplicate([1,2,3,1], 3))
print(containsNearbyDuplicate([1,2,3,1,2,3], 2))

