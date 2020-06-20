//
//  AddressBook.m
//  nsarray
//
//  Created by WuJInLi on 2020/6/19.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import "AddressBook.h"
#import "AddressCard.h"

@implementation AddressBook
@synthesize bookName,book;

- (instancetype)initWithName:(NSString *)name{
    self=[super init];
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}

- (instancetype)init
{
    return [self initWithName:@"NoName"];
}

- (void)addCard:(NSMutableArray*)theCard{
    [book addObject:theCard];
}

- (int)entries{
    return [book count];
}

- (void)list{
    for (AddressCard * card in book) {
        NSLog(@"%31s       %31s",[card.name UTF8String],[card.email UTF8String]);
    }
}
- (AddressCard *)lookup:(NSString *)name{
    for (AddressCard *nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare:name]==NSOrderedSame) {
            return nextCard;
        }
    }
    return nil;
}

- (void)removeCard:(NSString *)removeName{
    AddressCard* remove=[self lookup:removeName];
    if (remove!=nil&&book!=nil&&[book count]>0) {
        [book removeObjectIdenticalTo:remove];
    }
}

-(void) sort{
    [book sortUsingComparator:^(id obj1,id obj2){
        return [[obj1 name] compare:[obj2 name]];
    }];
}
@end
