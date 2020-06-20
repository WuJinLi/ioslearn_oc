//
//  AddressBook.h
//  nsarray
//
//  Created by WuJInLi on 2020/6/19.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface AddressBook : NSObject
@property (nonatomic , copy) NSString *bookName;
@property (nonatomic , strong) NSMutableArray *book;

//初始化方法，介于对象中嵌套对象，在初始化的时候，需将其内部对象进行初始
-(instancetype) initWithName:(NSString *) name;
//添加
-(void) addCard:(NSMutableArray * _Nullable) theCard;
//删除
-(void) removeCard:(NSString*) removeName;
//查看array的数量
-(int) entries;
//集合
-(void) list;

-(AddressCard*)lookup:(NSString*)name;
-(void) sort;
@end

NS_ASSUME_NONNULL_END
