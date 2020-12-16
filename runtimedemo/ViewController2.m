//
//  ViewController2.m
//  runtimedemo
//
//  Created by Lambent on 2020/12/16.
//

#import "ViewController2.h"
#import "Person1.h"
#import "Dog1.h"

@interface ViewController2 ()

@property(nonatomic,strong) Person1 *p;

@property(nonatomic,strong) Dog1  *dog;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.p= [[Person1 alloc] init];
    self.dog=[Dog1 new];
    // 在这里打断点 然后看dog 创建一个子类nskvonotify_dog
    [self.dog addObserver:self.p forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    self.dog.age=10;
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
