//
//  twosum.m
//  leetcode
//
//  Created by wei zhao on 2017/3/18.
//  Copyright © 2017年 wei zhao. All rights reserved.
//

#import "twosum.h"
/*
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.
*/
@implementation twosum

-(NSMutableArray*) twoSum:(NSMutableArray*)nums andTarget:(NSInteger)target {
    NSMutableArray *ret = [[NSMutableArray alloc] init];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    int i = 0;
    for (NSNumber *number in nums) {
        if ([dict objectForKey:[NSNumber numberWithInteger:target-[number integerValue]]]) {
            [ret addObject:[dict objectForKey:[NSNumber numberWithInteger:target-[number integerValue]]]];
            [ret addObject:[NSNumber numberWithInt:i]];
            return ret;
        } else {
            [dict setObject:[NSNumber numberWithInt:i] forKey:number];
        }
        i++;
    }
    return ret;
}
@end
