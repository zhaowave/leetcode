//
//  ViewController.m
//  leetcode
//
//  Created by wei zhao on 2017/3/18.
//  Copyright © 2017年 wei zhao. All rights reserved.
//

#import "ViewController.h"
#import "twosum.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    twosum *two = [[twosum alloc] init];
    NSMutableArray *arr = [NSMutableArray array];
    [arr addObject:@2];
    [arr addObject:@7];
    [arr addObject:@11];
    [arr addObject:@15];
    [two twoSum:arr andTarget:9];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
