//
//  ViewController.swift
//  PoorPigs
//
//  Created by qingfengiOS on 2018/6/13.
//  Copyright © 2018年 slwy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let resOfPig = poorPigs(1000, 15, 60)
        print(resOfPig)
    }

    func poorPigs(_ buckets: Int, _ minutesToDie: Int, _ minutesToTest: Int) -> Int {
        if buckets == 1 {
            return 0;
        }
        
        let base = minutesToTest / minutesToDie + 1 //每头猪最多可测试的水桶数
        var numberofPig = 1
        var total = base
        while total < buckets {
            total = total * base
            numberofPig += 1;
        }
        return numberofPig
    }
    
}

