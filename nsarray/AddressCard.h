//
//  AddressCard.h
//  nsarray
//
//  Created by WuJInLi on 2020/6/18.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressCard : NSObject
@property (copy,nonatomic)NSString *name,*email;
-(void) setName:(NSString *)name andSetEmail:(NSString*) email;
-(void) print;
@end

NS_ASSUME_NONNULL_END
