//
//  ViewController.m
//  LeetCodeSeries
//
//  Created by 情风 on 2018/10/31.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{

}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;
@end

static NSString *const kCellIdentifier = @"cellIdentifier";

@implementation ViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = NSStringFromClass([self class]);
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    
    self.dataArray = @[@"Q75_SortColors",
                       @"Q167_TwoSum2",
                       @"Q283_MoveZeros",
                       @"Q209_MinimumSizeSubarraySum",
                       @"Q03_LongestSubstringWithoutRepeatingCharaters",
                       @"Q350_IntersectionOfTwoArraysII",
                       @"Q01_TwoSum",
                       
                   ];
}

#pragma mark - TableViewDelegate/dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Class class = NSClassFromString(self.dataArray[indexPath.row]);
    [self.navigationController pushViewController:[class new] animated:YES];
}
@end
