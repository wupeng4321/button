//
//  ViewController.m
//  button
//
//  Created by wupeng on 2017/6/14.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ViewController.h"
#import <BlocksKit+UIKit.h>
#import "UIView+delay.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    button.delay = 1.0f;
    
    [button bk_whenTapped:^{
        
    }];
    [button bk_whenDoubleTapped:^{
        
    }];
    
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)click {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIViewController *vc = [[UIViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    });
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        UIViewController *vc = [[UIViewController alloc] init];
//        [self.navigationController pushViewController:vc animated:YES];
//    });
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
