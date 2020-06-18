//
//  main.m
//  nsarray
//
//  Created by WuJInLi on 2020/6/18.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressCard * address = [[AddressCard alloc] init];
        [address setName:@"zhangsan" andSetEmail:@"123456@sin.com"];
        [address print];
        
    }
    return 0;
}
