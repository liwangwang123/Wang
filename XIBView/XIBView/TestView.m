//
//  TestView.m
//  XIBView
//
//  Created by 王力 on 16/8/13.
//  Copyright © 2016年 王力. All rights reserved.
//

#import "TestView.h"

@implementation TestView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self awakeFromNib];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self awakeFromNib];
    }
    return self;
}
- (IBAction)changeApp:(UIButton *)sender {
    NSURL *MobileSecurityURL = [NSURL URLWithString:@"MobileSecurity://"];
    UIApplication *application = [UIApplication sharedApplication];
    if ([application canOpenURL:MobileSecurityURL]) {
        [application openURL:MobileSecurityURL];
    }
}

- (void)awakeFromNib {
    [[NSBundle mainBundle] loadNibNamed:@"TestView" owner:self options:nil];
    self.contentView.frame = self.bounds;
    self.contentView.backgroundColor = [UIColor orangeColor];
    [self addSubview:self.contentView];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
