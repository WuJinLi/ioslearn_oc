//
//  AddressCard.m
//  nsarray
//
//  Created by WuJInLi on 2020/6/18.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name,email;


- (void)setName:(NSString *)name andSetEmail:(NSString *)email{
    self.name=name;
    self.email=email;
}
-(void)print{
    NSLog(@"%31s    %31s",[name UTF8String],[email UTF8String]);
}
- (BOOL)isEqual:(AddressCard*)other
{
    if ([name isEqual:other.name]==YES && [email isEqual:other.email]==YES) {
        return YES;
    } else {
        return NO;
    }
}
@end
