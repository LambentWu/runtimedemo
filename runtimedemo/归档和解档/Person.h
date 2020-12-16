//
//  Person.h
//  runtimedemo
//
//  Created by Lambent on 2020/12/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSCoding>

@property(copy,nonatomic)NSString *name;
@property(assign,nonatomic)NSInteger  age;
//@property(assign,nonatomic)NSInteger  age1;
//@property(assign,nonatomic)NSInteger  age2;
//@property(assign,nonatomic)NSInteger  age3;
//@property(assign,nonatomic)NSInteger  age4;

@end

NS_ASSUME_NONNULL_END
