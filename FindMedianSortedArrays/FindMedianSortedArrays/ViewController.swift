//
//  ViewController.swift
//  FindMedianSortedArrays
//
//  Created by qingfengiOS on 2018/6/14.
//  Copyright © 2018年 slwy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrayOne = [2, 6, 9, 10, 34 ]
        let arrayTwo = [7, 8, 25, 45, 67, 88]
        
        print(FindMedianSortedArrays(arrayOne, arrayTwo))
        
        print(firstBigThanSecond(2, 5))
        print(firstBigThanSecond(8.0, 5.6))
    }
    
    
    func FindMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Any {
        
        var res: Array<Int> = [Int]();
        
        var indexI = 0
        var indexJ = 0
        while indexI < nums1.count && indexJ < nums2.count {
            if nums1[indexI] > nums2[indexJ] {
                res.append(nums2[indexJ])
                indexJ += 1
            } else {
                res.append(nums1[indexI])
                indexI += 1
            }
        }
        
        
        if indexI < nums1.count {
            for indexI in indexI..<nums1.count {
                res.append(nums1[indexI])
            }
        }
        if indexJ < nums2.count {
            for indexJ in indexJ..<nums2.count {
                res.append(nums2[indexJ])
            }
        }
        
        if res.count % 2 == 0 {//求中位数
            let one = res[(res.count - 1) / 2]
            let other = res[(res.count + 1) / 2]
            return Double((one + other)) / 2
        } else {
            return res[(res.count - 1) / 2]
        }
        
    }
    
    //使用泛型 做比较
    func firstBigThanSecond<T:Comparable>(_ num1: T, _ num2: T) -> Bool {
        if num1 > num2 {
            return true
        } else {
            return false
        }
    }
    
}

