//
//  ViewController.m
//  XWMenuPopViewDemo
//
//  Created by 邱学伟 on 16/3/30.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "ViewController.h"
#import "XWMenuPopView.h"

@interface ViewController ()<MenuPopDelegate>

@property (nonatomic, strong) XWMenuPopView *myMenuPopView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //点击按钮
    UIButton *menuPopBtn = [[UIButton alloc] initWithFrame:CGRectMake(200, 300, 128, 64)];
    [menuPopBtn setCenter:CGPointMake(self.view.center.x, 300)];
    [menuPopBtn setBackgroundColor:[UIColor purpleColor]];
    [menuPopBtn setTitle:@"弹出菜单视图" forState:UIControlStateNormal];
    [menuPopBtn addTarget:self action:@selector(ShowMenuPopView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:menuPopBtn];
    
    
    
    //将弹出菜单视图添加到主视图
    _myMenuPopView = [[XWMenuPopView alloc] initWithFrame:self.view.frame];
    [_myMenuPopView setMenuPopDelegate:self];
    [self.view addSubview:_myMenuPopView];
    
    
    
    /** 如果弹出视图不是在最前端显示,可以 */
    //[self.view bringSubviewToFront:_myMenuPopView];
    //如果弹出视图是在自定义UITabBarController封装的控制器,需要将 XWMenuPopView 添加在UITabBarController 子视图中
    
}

#pragma mark - 弹出菜单监听方法
-(void)ShowMenuPopView:(UIButton *)menuPopBtn {
    [_myMenuPopView showMenu];
}


#pragma mark - MenuPopDelegate 代理方法
-(void)XWMenuPopView:(XWMenuPopView *)MenuPopView didSelectedMenuIndex:(NSInteger)selectedIndex{
    NSLog(@"->>didSelectedMenuIndex->>点击的是第%ld个按钮",selectedIndex);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
