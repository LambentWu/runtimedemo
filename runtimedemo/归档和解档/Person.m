//
//  Person.m
//  runtimedemo
//
//  Created by Lambent on 2020/12/14.
//

#import "Person.h"
#import <objc/runtime.h>
@interface Person()



@end

@implementation Person

//解归档的时候调用
//也是一个初始化方法
- (id)initWithCoder:(NSCoder *)aDecoder{
//    NSLog(@"initWithCoder");
    self = [super init];
    if(self != nil){
        
        //属性的个数
       unsigned int count = 0;
       Ivar * ivars = class_copyIvarList([Person class], &count);
       for (int i = 0; i < count; i++) {
           //取出对应的Ivar
           Ivar ivar = ivars[i];
           //拿到名称
           const char * name = ivar_getName(ivar);
           //OC 字符串
           NSString * key = [NSString stringWithUTF8String:name];
           //解档
           id value = [aDecoder decodeObjectForKey:key];
           //KVC--设置值到属性上面!!!
           [self setValue:value forKey:key];
          
       }
    }
    return self;
}
  
//归档时调用此方法
- (void)encodeWithCoder:(NSCoder *)aCoder{
//    NSLog(@"encodeWithCoder");
    
    unsigned int count = 0;
    //指向ivar的指针
    Ivar *ivars = class_copyIvarList([self class], &count);
    for (int i=0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
//        NSLog(@"%s",name);
        NSString * key = [NSString stringWithUTF8String:name];
        
        //归档
        [aCoder encodeObject:[self valueForKey:key] forKey:key];
        
    }
}

@end
