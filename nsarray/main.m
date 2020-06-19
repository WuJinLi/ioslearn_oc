//
//  main.m
//  nsarray
//
//  Created by WuJInLi on 2020/6/18.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        AddressCard *card6 = [[AddressCard alloc] init];
        [card1 setName:@"zhangsan" andSetEmail:@"zhangsan@sin.com"];
        [card2 setName:@"lissi" andSetEmail:@"lissi@qq.com"];
        [card3 setName:@"wangwu" andSetEmail:@"wangwu@msn.com"];
        [card4 setName:@"zhaoliu" andSetEmail:@"zhaoliu@outlink.com"];
        [card5 setName:@"liqi" andSetEmail:@"liqi@sina.com"];
        [card6 setName:@"lousi" andSetEmail:@"lousi@qq.com"];
        
        
        AddressBook *addressBook=[[AddressBook alloc] initWithName:@"linda"];
        [addressBook addCard:card1];
        [addressBook addCard:card2];
        [addressBook addCard:card3];
        [addressBook addCard:card4];
        [addressBook addCard:card5];
        [addressBook addCard:card6];
        
        NSLog(@"addressbook count is %i",[addressBook entries]);
        
        [addressBook list];
        
    }
    return 0;
}
