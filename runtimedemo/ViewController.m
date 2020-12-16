//
//  ViewController.m
//  runtimedemo
//
//  Created by Lambent on 2020/12/11.
//  所有oc方法的调用都是 都是个某个对象发送消息
//  SEL（方法编号） IMP（具体方法实现）
///// An opaque type that represents a method in a class definition.
//  typedef struct objc_method *Method;(成员方法)
//
///// An opaque type that represents an instance variable.
//  typedef struct objc_ivar *Ivar;*（成员变量）

#import "ViewController.h"
#import <objc/runtime.h>
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)writeToLib:(id)sender {
    NSLog(@"归档");
       Person * person = [Person new];
       person.name = @"梁森1";
       person.age = 261;
       
       NSString * temp = NSTemporaryDirectory();
       NSString * filePath = [temp stringByAppendingPathComponent:@"hank1.hank"];
       NSLog(@"%@", filePath);
       [NSKeyedArchiver archiveRootObject:person toFile:filePath];
    
    
}

- (IBAction)readFromLib:(id)sender {
    
    
    NSLog(@"解档");
       NSString * temp = NSTemporaryDirectory();
       NSString * filePath = [temp stringByAppendingPathComponent:@"hank1.hank"];
       
       Person * person = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"%@  %ld", person.name, (long)person.age);
    

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self firstruntime];
    
    
}
-(void)firstruntime{
    
    unsigned int count = 0;
    class_copyIvarList([Person class], &count);
    NSLog(@"%d",count);
    //指向ivar的指针
    Ivar *ivars = class_copyIvarList([UIButton class], &count);
    for (int i=0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSLog(@"%s",name);
        
    }
    
    
}

@end
