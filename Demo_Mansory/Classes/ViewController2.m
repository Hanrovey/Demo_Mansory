//
//  ViewController2.m
//  Demo_Mansory
//
//  Created by Ihefe_Hanrovey on 16/8/16.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import "ViewController2.h"
#import "Masonry.h"
@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    /**
     *  让一个view略小于其superView(边距为20)
     */
    UIView *t_view2 = [UIView new];
    t_view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:t_view2];
    
    [t_view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //  等价于      //make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(20, 20, 20, 20));
        
        //   等价于     //make.top.bottom.left.and.right.equalTo(self.view).with.insets(UIEdgeInsetsMake(20, 20, 20, 20));
        
        make.top.equalTo(self.view).with.offset(20);
        make.bottom.equalTo(self.view).with.offset(-20);
        make.left.equalTo(self.view).with.offset(20);
        make.right.equalTo(self.view).with.offset(-20);
        
        
    }];
}

@end
