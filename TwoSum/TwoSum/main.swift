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
//    for i in 0...nums.count - 1 {
//        for j in i...nums.count - 1 {
//            if nums[i] + nums[j] == target {
//                return [i, j]
//            }
//        }
//    }
//    return []
    
    var recordDic: [Int: Int] = [:]
    for i in 0..<nums.count {
        recordDic[nums[i]] = i
    }
    
    for j in 0..<nums.count {
        let temp = target - nums[j]
        if (recordDic[temp] != nil) && recordDic[temp] != j {
            return [j, recordDic[temp]!]
        }
    }
    return []
}
/*
 最直接的方式，时间复杂度:n²
 
 还可以通过hash函数来降低时间复杂度
 */



class HashNode {
    
    var key: Int!
    var value: Int!
    var next: HashNode!
}

class HashaTable {
    var buckets: Array<HashNode?>
    
    init(capacity: Int) {
        self.buckets = Array<HashNode?>(repeating: nil, count: capacity)
    }
    
    func containKey(_ key: Int) -> Bool {
        for node in buckets {
            if node?.key == key {
                return true
            }
        }
        return false
    }
 
    func getValueByKey(_ key: Int) -> Int {
        
        for node in buckets {
            if node?.key == key {
                return (node?.value)!
            }
        }
        return 0
    }
}

func createHash(total: Int, buckets: Array<HashNode?>) -> Int! {
    var remainder: Int = 0
    remainder = total % buckets.count
    return remainder
}

func addWord(key: Int, value: Int, buckets: inout Array<HashNode?>) {
    
    var hashIndex: Int!
    var head: HashNode!
    
    hashIndex = createHash(total: key + value, buckets: buckets)
    
    let childToUse: HashNode = HashNode()
    childToUse.key = key
    childToUse.value = value
    
    if buckets[hashIndex] == nil {
        buckets[hashIndex] = childToUse
    } else {
        head = buckets[hashIndex]
        childToUse.next = head
        head = childToUse
        
        buckets[hashIndex] = head
    }
    
    
}


func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    
    let hashTable = HashaTable(capacity: nums.count)
    for i in 0...hashTable.buckets.count - 1 {
        addWord(key: i, value: nums[i], buckets: &hashTable.buckets)
    }
    for i in 0...nums.count - 1 {
        let complement = target - nums[i];
        if hashTable.containKey(complement) && (hashTable.getValueByKey(complement) != i) {
            return [i, hashTable.getValueByKey(complement)]
        }
    }

    return []
}















print(twoSum([1, 3, 4, 6, 9, 8], 15))
