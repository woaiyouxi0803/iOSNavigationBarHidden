//
//  TViewController.m
//  sDemo
//
//  Created by jiangxin on 2018/11/6.
//  Copyright © 2018年 woaiyouxi0803. All rights reserved.
//

#import "TViewController.h"
#import "ViewController.h"
@interface TViewController ()

@end

@implementation TViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 150, 50, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"pop" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(ccc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(150, 150, 50, 50);
    button2.backgroundColor = [UIColor redColor];
    [button2 setTitle:@"pRoot" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(ccc2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];

}

- (void)ccc{
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)ccc2{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
