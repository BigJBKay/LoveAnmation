//
//  XSHomePageViewController.m
//  TaiPingApp
//
//  Created by apple on 15/5/26.
//  Copyright (c) 2015年 Jonathan Tribouharet. All rights reserved.
//

#import "XSHomePageViewController.h"

@interface XSHomePageViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (nonatomic,strong) NSArray *btns;

@end

@implementation XSHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btns = @[_btn1,_btn2,_btn3];
    // Do any additional setup after loading the view.
}

- (void)addAnimation {

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
