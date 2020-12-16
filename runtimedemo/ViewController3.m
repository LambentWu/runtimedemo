//
//  ViewController3.m
//  runtimedemo
//
//  Created by Lambent on 2020/12/16.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //以下是三种消息转发实现的解决方案 ，实现以下任何一种实现 不会触发发其他两种方案
//# MARK 1:===========================================
    /*
     void sendMessage(id self, SEL _cmd, NSString *msg) {
         NSLog(@"%@", msg);
     }

     // 1. resolveInstanceMethod 动态方法解析
     + (BOOL)resolveInstanceMethod:(SEL)sel {
     //    NSString *methodName = NSStringFromSelector(sel);
     //    if ([methodName isEqualToString:@"sendMessage:"]) {
     //        return class_addMethod(self, sel, (IMP)sendMessage, "v@:@");
     //    }
         return NO;
     }
# MARK 2:===========================================
     // 2. forwardingTargetForSelector 快速转发
     - (id)forwardingTargetForSelector:(SEL)aSelector {
     //    NSString *methodName = NSStringFromSelector(aSelector);
     //    if ([methodName isEqualToString:@"sendMessage:"]) {
     //        return [SpareWheel new];
     //    }
         return [super forwardingTargetForSelector:aSelector];
     }
# MARK 3:===========================================
     // 3. forwardInvocation 慢速转发
     // （1）方法签名
     // （2）消息转发
     - (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
         NSString *methodName = NSStringFromSelector(aSelector);
         if ([methodName isEqualToString:@"sendMessage:"]) {
             return [NSMethodSignature signatureWithObjCTypes:"v@:@"];
         }
         return [super methodSignatureForSelector:aSelector];
     }

     - (void)forwardInvocation:(NSInvocation *)anInvocation {
     //    SEL sel = [anInvocation selector];
     //    SpareWheel *tempObj = [SpareWheel new];
     //    if ([tempObj respondsToSelector:sel]) {
     //        [anInvocation invokeWithTarget:tempObj];
     //    } else {
     //        [super forwardInvocation:anInvocation];
     //    }
         [super forwardInvocation:anInvocation];
     }
#MARK 4: 假设以上三种都没实现 就会来到这一步
     - (void)doesNotRecognizeSelector:(SEL)aSelector {
         NSLog(@"找不到方法");
     }

     
     
     
     */
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
