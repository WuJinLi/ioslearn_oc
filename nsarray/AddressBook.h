//
//  AddressBook.h
//  nsarray
//
//  Created by WuJInLi on 2020/6/19.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressBook : NSObject
@property (nonatomic , copy) NSString *bookName;
@property (nonatomic , strong) NSMutableArray *book;


-(instancetype) initWithName:(NSString *) name;
-(void) addCard:(NSMutableArray*) theCard;
-(int) entries;
-(void) list;
@end

NS_ASSUME_NONNULL_END
