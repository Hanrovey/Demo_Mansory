//
//  Menu_TableViewController.m
//  Demo_Mansory
//
//  Created by Ihefe_Hanrovey on 16/8/16.
//  Copyright © 2016年 Ihefe_Hanrovey. All rights reserved.
//

#import "Menu_TableViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"

@interface Menu_TableViewController ()
@property(nonatomic, strong) NSMutableArray *data;
@end

@implementation Menu_TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [NSMutableArray array];
    
    ViewController1 *v1 = [[ViewController1 alloc] init];
    
    ViewController2 *v2 = [[ViewController2 alloc] init];
    
    ViewController3 *v3 = [[ViewController3 alloc] init];
    
    ViewController4 *v4 = [[ViewController4 alloc] init];
    
    [self.data addObject:v1];
    [self.data addObject:v2];
    [self.data addObject:v3];
    [self.data addObject:v4];
    
}



#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [NSString stringWithFormat:@"Demo-----%ld",indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *vc = self.data[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
