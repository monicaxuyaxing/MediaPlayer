//
//  BaseViewController.m
//  LKPlayer
//
//  Created by ck on 16/6/24.
//  Copyright © 2016年 LK. All rights reserved.
//

#import "BaseViewController.h"
#import "MovieViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点我进直播" forState:UIControlStateNormal];
   
    btn.frame = CGRectMake((self.view.frame.size.width-100)/2, (self.view.frame.size.height-100)/2, 100, 100);
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)buttonAction
{
    MovieViewController *movie = [[MovieViewController alloc]init];
    [self presentViewController:movie animated:YES completion:nil];
}
@end
