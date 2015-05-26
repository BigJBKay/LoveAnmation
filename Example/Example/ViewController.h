//
//  ViewController.h
//  Example
//
//  Created by Jonathan Tribouharet
//

#import <UIKit/UIKit.h>

#import <JT3DScrollView.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet JT3DScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (weak, nonatomic) IBOutlet UIButton *previousButton;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftNextButtonConstraint;

@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com