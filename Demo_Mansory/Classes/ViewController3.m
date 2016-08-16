//
//  ViewController3.m
//  Demo_Mansory
//
//  Created by Ihefe_Hanrovey on 16/8/16.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import "ViewController3.h"
#import "Masonry.h"
@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    /**
     *  让两个宽度为200的view 垂直居中且等宽等间距的排列 (自动计算高度)
     */
    
    int padding = 30;
    
    UIView *t_view3 = [UIView new];
    t_view3.backgroundColor = [UIColor blueColor];
    [self.view addSubview:t_view3];
    
    UIView *t_view4 = [UIView new];
    t_view4.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:t_view4];
    
    
    [t_view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.mas_equalTo(self.view.mas_centerX);
        
        make.top.equalTo(self.view.mas_top).with.offset(padding);
        
        make.bottom.equalTo(t_view4.mas_top).with.offset(-padding);
        
        make.height.equalTo(t_view4);
        
        make.width.mas_equalTo(@200);
    }];
    
    
    [t_view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.mas_equalTo(self.view.mas_centerX);
        
        make.top.equalTo(t_view3.mas_bottom).with.offset(padding);
        
        make.bottom.equalTo(self.view.mas_bottom).with.offset(-padding);
        
        make.height.equalTo(t_view3);
        
        make.width.mas_equalTo(@200);
    }];
}

@end
