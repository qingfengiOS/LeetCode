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
