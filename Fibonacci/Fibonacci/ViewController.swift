//
//  ViewController.swift
//  Fibonacci
//
//  Created by 李一平 on 2018/6/15.
//  Copyright © 2018年 slwy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("fibonacci number = \(fibonacci(10))")
        print("fibonacci number = \(recursionFibonacci(10))")
        
        /*
         常规的递归算法的很多计算都是重复的，而且这个重复会随着n的增加而急剧增大
         使用循环，记录上次的值，能够减少重复计算带来的额外开销
         */
    }
    
    /// 递归求菲波那切数列
    ///
    /// - Parameter n: 目标
    /// - Returns: 返回的结果
    func recursionFibonacci(_ n: Int) -> Int {
 
        if n <= 0 {
            return 0
        }
        if n == 1 {
            return 1
        }
        return recursionFibonacci(n - 2) + recursionFibonacci(n - 1)
    }
    
    /// 循环求菲波那切数列
    ///
    /// - Parameter n: 目标
    /// - Returns: 返回的结果
    func fibonacci(_ n: Int) -> Int {
        
        let result = [0, 1]
        if n < 2 {
            return result[n]
        }
        var numberOne = 1
        var numberTwo = 0
        var numberN = 0
        for _ in 2...n {
            numberN = numberOne + numberTwo
            
            numberTwo = numberOne
            numberOne = numberN
        }
        return numberN
    }

    
    


}

