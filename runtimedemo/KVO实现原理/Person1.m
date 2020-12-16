//
//  Person1.m
//  runtimedemo
//
//  Created by Lambent on 2020/12/16.
//

#import "Person1.h"

@implementation Person1

//监听到object的keypath属性变化为了change
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"监听到%@的%@属性变化为了%@",object,keyPath,change);
    
    
}
@end
