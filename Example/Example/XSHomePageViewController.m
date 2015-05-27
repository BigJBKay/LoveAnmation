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
    [self addBgAnimation];
    
}

- (void)UIinit{
    
    for (UIButton *btn in _btns) {
        btn.layer.cornerRadius = 10.0f;
        btn.layer.masksToBounds = YES;
        btn.titleLabel.font = [UIFont systemFontOfSize:25.0f];
    }
}
- (void)addSimpleHoriAnimation {

    for (int i = 0;i<_btns.count;i++) {
        
        UIButton *btn = _btns[i];
        
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
//        [UIView beginAnimations:@"transform" context:NULL];
//        [UIView setAnimationDuration:0.5];
//        btn.layer.transform  = CATransform3DIdentity;
//        btn.alpha = 1;
//        [UIView commitAnimations];
//        //一样
//        [UIView animateWithDuration:0.5 animations:^{
//            
//        }];
        
//        [UIView transitionFromView:<#(UIView *)#> toView:<#(UIView *)#> duration:<#(NSTimeInterval)#> options:<#(UIViewAnimationOptions)#> completion:<#^(BOOL finished)completion#>]
        
        [UIView transitionWithView:btn duration:0.6+i*0.3
                           options:UIViewAnimationOptionTransitionCurlUp
                        animations:^{
                            btn.layer.transform  = CATransform3DIdentity;
                            btn.alpha = 1;
                            
                        } completion:^(BOOL finished){
                        }];
        

        
        //这个一般用于触发事件后显示变化动画，才有效果
//        [CATransaction setDisableActions:YES];
//        [CATransaction setAnimationDuration:0.5];
//        btn.layer.transform = CATransform3DIdentity;
//        btn.alpha  = 1;
        
    };
}
-(void)addBgAnimation{
    
//    [UIView animateKeyframesWithDuration:6.f
//                                   delay:0.0
//                                 options:UIViewKeyframeAnimationOptionCalculationModeLinear
//                              animations:^{
//                                  [UIView addKeyframeWithRelativeStartTime:0.0   // 相对于6秒所开始的时间（第0秒开始动画）
//                                                          relativeDuration:1/3.0 // 相对于6秒动画的持续时间（动画持续2秒）
//                                                                animations:^{
//                                                                    self.view.backgroundColor = [UIColor redColor];
//                                                                    self.view.alpha = 0.5;
//                                                                }];
//                                  
//                                  [UIView addKeyframeWithRelativeStartTime:1/3.0 // 相对于6秒所开始的时间（第2秒开始动画）
//                                                          relativeDuration:1/3.0 // 相对于6秒动画的持续时间（动画持续2秒）
//                                                                animations:^{
//                                                                    self.view.backgroundColor = [UIColor yellowColor];
//                                                                    self.view.alpha = 1;
//                                                                }];
//                                  [UIView addKeyframeWithRelativeStartTime:2/3.0 // 相对于6秒所开始的时间（第4秒开始动画）
//                                                          relativeDuration:1/3.0 // 相对于6秒动画的持续时间（动画持续2秒）
//                                                                animations:^{
//                                                                    self.view.backgroundColor = [UIColor greenColor];
//                                                                    self.view.alpha = 0.5;
//                                                                }];
//                                  
//                              }
//                              completion:^(BOOL finished) {
//                                  [self addBgAnimation];
//                              }];
    
    [UIView animateKeyframesWithDuration:10.f
                                   delay:0.0
                                 options:UIViewKeyframeAnimationOptionCalculationModeLinear
                              animations:^{
                                  
                                  [UIView addKeyframeWithRelativeStartTime:0.0   // 相对于6秒所开始的时间（第0秒开始动画）
                                                          relativeDuration:1/3.0 // 相对于6秒动画的持续时间（动画持续2秒）
                                                                animations:^{
                                                                    self.view.backgroundColor = [UIColor blueColor];
                                                                    self.view.alpha = 0.5;
                                                                }];
                                  
                                  
                                  [UIView addKeyframeWithRelativeStartTime:1/3.0 // 相对于6秒所开始的时间（第2秒开始动画）
                                                          relativeDuration:1/3.0 // 相对于6秒动画的持续时间（动画持续2秒）
                                                                animations:^{
                                                                    self.view.backgroundColor = [UIColor yellowColor];
                                                                    self.view.alpha = 0.8;
                                                                }];
                                  
                                  [UIView addKeyframeWithRelativeStartTime:2/3.0 // 相对于6秒所开始的时间（第4秒开始动画）
                                                          relativeDuration:1/3.0 // 相对于6秒动画的持续时间（动画持续2秒）
                                                                animations:^{
                                                                    self.view.backgroundColor = [UIColor greenColor];
                                                                    self.view.alpha = 0.5;
                                                                }];
                                  
                              }
                              completion:^(BOOL finished) {
                                  [self addBgAnimation];
                              }];
    
}
-(void)ballMoveAllTimeAnimation {
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
