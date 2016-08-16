//
//  ViewController1.m
//  Demo_Mansory
//
//  Created by Ihefe_Hanrovey on 16/8/16.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import "ViewController1.h"
#import "Masonry.h"
@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    /**
     *  UIView居中
     */
    UIView *t_view = [UIView new];
    t_view.backgroundColor = [UIColor redColor];
    
    // 记得在添加约束之前,一定要先view添加到superView上面，否则会出现崩溃
    [self.view addSubview:t_view];
    
    [t_view mas_makeConstraints:^(MASConstraintMaker *make) {
        // t_view居中
        make.center.equalTo(self.view);
        
        // t_view的size
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
}

@end
