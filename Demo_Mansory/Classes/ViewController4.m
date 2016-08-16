//
//  ViewController4.m
//  Demo_Mansory
//
//  Created by Ihefe_Hanrovey on 16/8/16.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import "ViewController4.h"
#import "Masonry.h"
@interface ViewController4 ()

@end

@implementation ViewController4

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    /**
     *  在UIScrollView中顺序排列一些view并自动计算contentSize 
     */
    
    UIScrollView *scrollView = [UIScrollView new];
    scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(20, 20, 20, 20));
    }];
    
    // 这个containView是用来先填充整个scrollView的,到时候这个containView的size就是scrollView的contentSize
    UIView *containView = [UIView new];
    containView.backgroundColor = [UIColor blackColor];
    [scrollView addSubview:containView];
    [containView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
        make.width.equalTo(scrollView);
    }];
    
    
    
    UIView *lastView = nil;
    
    for (int i = 0; i < 6; i++) {
        
        UIView *sub_view = [UIView new];
        sub_view.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
                                              saturation:( arc4random() % 128 / 256.0 ) + 0.5
                                              brightness:( arc4random() % 128 / 256.0 ) + 0.5
                                                   alpha:1];
        [containView addSubview:sub_view];
        
        
        [sub_view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.and.right.equalTo(containView);
            
            make.height.mas_equalTo(@(30*i));
            
            
            if (lastView)
            {
                make.top.mas_equalTo(lastView.mas_bottom);
            }else
            {
                make.top.mas_equalTo(containView.mas_top);
            }
            
        }];
        
        lastView = sub_view;
    }
    
    // 最后更新containView
    [containView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(lastView.mas_bottom);
    }];
}
@end
