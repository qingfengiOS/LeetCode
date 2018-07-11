//
//  ViewController.m
//  ReverseArray
//
//  Created by liyiping on 2018/7/11.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+Reverse.h"
#import "NSMutableArray+Reverse.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *array = @[@1, @2, @3, @4, @5];
    NSLog(@"reverseArray = %@",[array reverseArray]);
    
    NSMutableArray *mutableArray = array.mutableCopy;
    NSLog(@"reverseMutableArray = %@",[mutableArray reverseArray]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
