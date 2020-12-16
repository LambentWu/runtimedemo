//
//  UITableView+LGDefaultDisplay.h
//  RuntimeDemo
//
//  Created by Guoxb on 2019/12/3.
//  Copyright © 2019 Guoxb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (LGDefaultDisplay)
// MARK : 分类可以通过runtime动态添加成员变量！！！
@property (nonatomic, strong) UIView *lgDefaultView;

- (void)lg_reloadData;

@end

NS_ASSUME_NONNULL_END
