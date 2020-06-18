//
//  main.m
//  ioslearn_oc
//
//  Created by WuJInLi on 2020/6/18.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str=@"zhangsan";
        NSLog(@"%@",str);
        
        NSMutableArray * arr=[NSMutableArray array];
        [arr addObject:str];
        NSLog(@"%@",arr);
    }
    return 0;
}
