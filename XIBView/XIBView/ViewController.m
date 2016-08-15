//
//  ViewController.m
//  XIBView
//
//  Created by 王力 on 16/8/13.
//  Copyright © 2016年 王力. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:testView];
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    aView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:aView];
    
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, nil, 50, 50);
//    CGPathAddLineToPoint(path, nil, 60, 60);
//    CGPathAddLineToPoint(path, nil, 70, 70);
//    CGPathAddLineToPoint(path, nil, 80, 80);
//    CAKeyframeAnimation *animayion = [CAKeyframeAnimation animationWithKeyPath:@"position"];
//    [animayion setPath:path];
//    [animayion setDuration:2.0];
//    [aView.layer addAnimation:animayion forKey:nil];
    
    CGPoint point1 = CGPointMake(50, 50);
    CGPoint point2 = CGPointMake(60, 60);
    CGPoint point3 = CGPointMake(70, 70);
    CGPoint point4 = CGPointMake(80, 80);
    NSArray *values = @[[NSValue valueWithCGPoint:point1], [NSValue valueWithCGPoint:point2], [NSValue valueWithCGPoint:point3], [NSValue valueWithCGPoint:point4]];
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [animation setValues:values];
    [animation setDuration:2.0];
    [aView.layer addAnimation:animation forKey:nil];
    
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, nil, 50, 150);
//    CGPathAddLineToPoint(path, nil, 100, 200);
//    CGPathAddLineToPoint(path, nil, 150, 250);
//    CGPathAddLineToPoint(path, nil, 200, 300);
//    
//    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
//    [animation setPath:path];
//    [animation setDuration:2.0];
//    CGPathRelease(path);
//    [aView.layer addAnimation:animation forKey:nil];
    
//    UIAlertView *alear = [[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"other", nil];
//    [alear show];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
