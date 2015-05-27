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
    [self UIinit];
    [self addSimpleHoriAnimation];
}

- (void)UIinit{
    
    for (UIButton *btn in _btns) {
        btn.layer.cornerRadius = 10.0f;
        btn.layer.masksToBounds = YES;
    }
}
- (void)addSimpleHoriAnimation {

    for (UIButton *btn in _btns) {
        
        
        [CATransaction setDisableActions:NO];
        CATransform3D transform = CATransform3DMakeTranslation(- 2*SCREEN_WIDTH, 0, 0);
        btn.layer.transform = transform;
        btn.alpha =0;
        
        //cabasicAnimation 会回到原先的位置
//        CABasicAnimation *basicA = [CABasicAnimation animationWithKeyPath:@"transform"];
//        [basicA setToValue:[NSValue valueWithCATransform3D:transform]];
//        [basicA setAutoreverses:NO];
//        [basicA setDuration:0.5];
//        
//        [btn.layer addAnimation:basicA forKey:@"simpleMoveAnimation"];
        
        //UIView 动画会停留在最终参数位置
        [UIView beginAnimations:@"transform" context:NULL];
        [UIView setAnimationDuration:0.5];
        btn.layer.transform  = CATransform3DIdentity;
        btn.alpha = 1;
        [UIView commitAnimations];
        //一样
        [UIView animateWithDuration:0.5 animations:^{
            
        }];
        
        
        //这个一般用于触发事件后显示变化动画，才有效果
//        [CATransaction setDisableActions:YES];
//        [CATransaction setAnimationDuration:0.5];
//        btn.layer.transform = CATransform3DIdentity;
//        btn.alpha  = 1;
        
    };
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
