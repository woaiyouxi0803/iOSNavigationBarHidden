//
//  FViewController.m
//  sDemo
//
//  Created by jiangxin on 2018/11/6.
//  Copyright © 2018年 woaiyouxi0803. All rights reserved.
//

#import "FViewController.h"
#import "SViewController.h"

@interface FViewController ()

@end

@implementation FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(50, 150, 50, 50);
    button1.backgroundColor = [UIColor redColor];
    [button1 setTitle:@"push" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(ccc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(150, 150, 50, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"push2" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(ccc2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)ccc{
    SViewController *vc = [[SViewController alloc] init];
    NSLog(@"------push");
    vc.view.backgroundColor = [UIColor grayColor];
    vc.shouldNavigationBarHidden = YES;
    NSLog(@"before pushViewController----shouldNavigationBarHidden:%zd",vc.shouldNavigationBarHidden);
    [self.navigationController pushViewController:vc animated:YES];
 }

- (void)ccc2{
    SViewController *vc = [[SViewController alloc] init];
    NSLog(@"------push2");
    vc.shouldNavigationBarHidden = YES;
    NSLog(@"before pushViewController----shouldNavigationBarHidden:%zd",vc.shouldNavigationBarHidden);
    [self.navigationController pushViewController:vc animated:YES];
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
