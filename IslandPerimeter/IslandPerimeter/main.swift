//
//  main.swift
//  IslandPerimeter
//
//  Created by qingfeng on 2018/8/7.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//
// 463. Island Perimeter
import Foundation

func islandPerimeter(_ grid: [[Int]]) -> Int {
 
    var islands = 0 //岛屿数量
    var neighbors = 0 //两个相邻岛屿数量
    
    for i  in 0...grid.count - 1 {
        for j in 0...grid[i].count - 1 {
            
            if grid[i][j] == 1 {
                islands += 1//岛屿自增
                
                if j < grid[i].count - 1 && grid[i][j + 1] == 1 {//判断横向相邻岛屿，注意越界的处理
                    neighbors += 1
                }
                
                if i < grid.count - 1 && grid[i + 1][j] == 1 {//判断纵向相邻岛屿，注意越界的处理
                    neighbors += 1
                }
            }
        }
    }
    return islands * 4 - neighbors * 2
}

let grid = [[0, 1, 0, 0],
            [1, 1, 1, 0],
            [0, 1, 0, 0],
            [1, 1, 0, 0],]

print(islandPerimeter(grid))
/*
 思路：（岛屿为1，海洋为0）
 1、若为岛屿则有4条边
 2、若有两个相邻岛屿则有2边重复，需要去重 （判断相邻岛屿的时候需要注意数组越界问题）
 */
