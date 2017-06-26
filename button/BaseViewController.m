//
//  BaseViewController.m
//  button
//
//  Created by wupeng on 2017/6/17.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "BaseViewController.h"
#import "UIView+delay.h"

@interface BaseViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    _button.backgroundColor = [UIColor redColor];
    [self.view addSubview:_button];
    [_button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click {
    __weak typeof(self) weakSelf = self;
    if (!_button.taskShouldBeCanceled) {
        _button.oneTapBlock = ^{
            UIViewController *vc = [[UIViewController alloc] init];
            vc.title = [NSString stringWithFormat:@"%@", @(arc4random() % 10)];
            [weakSelf.navigationController pushViewController:vc animated:YES];
        };
    }
}

@end
