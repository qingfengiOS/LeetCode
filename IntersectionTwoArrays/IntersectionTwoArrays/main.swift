//
//  main.swift
//  IntersectionTwoArrays
//
//  Created by qingfeng on 2018/8/1.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//
/*
 给定两个数组，写一个函数来计算它们的交集。
 
 例子:

 给定 num1= [1, 2, 2, 1], nums2 = [2, 2], 返回 [2].
 
 提示:
 每个在结果中的元素必定是唯一的。
 我们可以不考虑输出结果的顺序。
 */
import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    let set1 = Set(nums1)
    let resSet = set1.intersection(nums2)
    return [Int](resSet)
}

print(intersection([1,2,2,1,5], [2,5,8]))


/*
 350 给定两个数组，写一个方法来计算它们的交集。
 
 例如:
 给定 nums1 = [1, 2, 2, 1], nums2 = [2, 2], 返回 [2, 2].
 
 注意：
 
 输出结果中每个元素出现的次数，应与元素在两个数组中出现的次数一致。
 我们可以不考虑输出结果的顺序。
 */
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    //把第一个数组元素做key，出现次数做value构造字典
    var frequencies = Dictionary(nums1.map { ($0, 1) } , uniquingKeysWith: +)
    var res = [Int]()
    
    for num in nums2 {
        guard let frequent = frequencies[num] else {
            continue
        }
        
        if frequent > 0 {
            frequencies[num]! = frequent - 1
            res.append(num)
        }
    }
    
    return res
}

print(intersect([2,3,1,1], [3,1]))
