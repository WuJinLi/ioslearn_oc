//
//  main.m
//  nsdictionary
//
//  Created by WuJInLi on 2020/6/22.
//  Copyright © 2020 WuJInLi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSMutableDictionary
        NSLog(@"NSMutableDictionary");
        NSMutableDictionary *dictionary=[NSMutableDictionary dictionary];
        //写法一：
        //向词典中添加元素
        NSLog(@"第一种写法");
        [dictionary setObject:@"javaweb" forKey:@"java"];
        [dictionary setObject:@"ios app" forKey:@"oc"];
        [dictionary setObject:@"web" forKey:@"html"];
        
//        NSLog(@"java can do %@",[dictionary objectForKey:@"java"]);
//        NSLog(@"oc can do %@",[dictionary objectForKey:@"oc"]);
//        NSLog(@"html can do %@",[dictionary objectForKey:@"html"]);
        for (NSString* key in dictionary) {
            NSLog(@"key:%@,value:%@",key,dictionary[key]);
        }
        
        //写法二
        NSLog(@"第二种写法");
        dictionary[@"java"]=@"javaweb";
        dictionary[@"oc"]=@"ios app";
        dictionary[@"html"]=@"web";
        for (NSString* key in dictionary) {
            NSLog(@"key:%@,value:%@",key,dictionary[key]);
        }
//        NSLog(@"java can do %@",dictionary[@"java"]);
//        NSLog(@"oc can do %@",dictionary[@"oc"]);
//        NSLog(@"html can do %@",dictionary[@"html"]);
        
        
        NSArray* allKeys=[dictionary allKeys];
        allKeys=[allKeys sortedArrayUsingComparator:^(id obj1,id obj2){
            return [obj1 compare:obj2];
        }];
        
        NSLog(@"排序");
        for (NSString *key in allKeys) {
            NSLog(@"key:%@,value:%@",key,dictionary[key]);
        }
        
        
        //NSDictionary
        NSLog(@"NSDictionary");
        //第一种写法：
        NSDictionary *dic =[NSDictionary dictionaryWithObjectsAndKeys:@"java",@"javaweb",@"oc",@"ios app",@"html",@"web", nil];
        
        //第二种写法：
        NSDictionary *dic2=@{@"java":@"javaweb",@"python":@"脚本",@"kotlin":@"android"};
        for (NSString* key in dic2) {
            NSLog(@"key:%@,value:%@",key,dic2[key]);
        }
        
    }
    return 0;
}
/**
 在oc中的dictionary 类似于java中的map，存储数据的方式是键值对
 分为可变不可变两种：NSMutableDictionary（可变）/NSDictionary（不可变）
 向dictionary中添加元素两种方法：
 1:
    添加元素:setObject:@"key" forKey:@"value"
    查询:key对应的value：objectForKey:@"key"
 2:
    添加元素:dictionary[@"key"]=@"value";
    查询元素:idctionary[@"key"]
 
 
获取dictionary中所有key，且将其存储在集合中[dictionary allKeys]，获取key的集合，则可以进行一些操作，不如排序
 */
