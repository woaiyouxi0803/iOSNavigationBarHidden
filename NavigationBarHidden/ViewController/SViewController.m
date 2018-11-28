//
//  SViewController.m
//  sDemo
//
//  Created by jiangxin on 2018/11/6.
//  Copyright © 2018年 woaiyouxi0803. All rights reserved.
//

#import "SViewController.h"
#import "TViewController.h"
@interface SViewController ()

@end

@implementation SViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    [self.navigationController setNavigationBarHidden:NO animated:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad----shouldNavigationBarHidden:%zd",self.shouldNavigationBarHidden);
    self.shouldNavigationBarHidden = NO;
    NSLog(@"viewDidLoad----shouldNavigationBarHidden:%zd",self.shouldNavigationBarHidden);

    self.view.backgroundColor = [UIColor greenColor];
    UIButton * bbutton = [UIButton buttonWithType:UIButtonTypeSystem];
    bbutton.frame = CGRectMake(50, 150, 50, 50);
    bbutton.backgroundColor = [UIColor yellowColor];
    [bbutton setTitle:@"push" forState:UIControlStateNormal];
    [bbutton addTarget:self action:@selector(ccc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bbutton];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(250, 150, 50, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"pop" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(ccc2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    
}

- (void)ccc{
    TViewController *vc = [[TViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)ccc2{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
