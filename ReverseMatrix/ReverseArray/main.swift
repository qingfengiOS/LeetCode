//
//  main.swift
//  ReverseArray
//
//  Created by 情风 on 2018/9/27.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import Foundation

var originArray = [[1,2,3],[4,5,6],[7,8,9]]

func reverseArray(_ array: inout [[Int]]) -> [[Int]] {
    for i in 1..<array.count {
        for j in 0..<i {
            (array[i][j],array[j][i]) = (array[j][i],array[i][j])
        }
    }
    return array
}

print(reverseArray(&originArray))

