//
//  UIImage+hz.m
//  runtimedemo
//
//  Created by Lambent on 2020/12/16.
//

#import "UIImage+hz.h"
//利用runtime交换方法
// 把类加载内存的时候之后调用一次
@implementation UIImage (hz)

+ (void)load
{
    Method imageNamedMethod = class_getClassMethod(self, @selector(imageNamed:));
    
    Method  hz_imageNameMethod = class_getClassMethod(self, @selector(hz_imageNamed:));
    
    method_exchangeImplementations(imageNamedMethod, hz_imageNameMethod);
    
    
}


+ (UIImage *)hz_imageNamed:(NSString *)imageName
{
    UIImage *image = [UIImage hz_imageNamed:imageName];
    
    if (image) {
        NSLog(@"加载成功");
    } else {
        NSLog(@"加载失败");
    }
    return  image;
}
@end
