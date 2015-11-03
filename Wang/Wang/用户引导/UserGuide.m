//
//  UserGuide.m
//  
//
//  Created by 王力 on 15/11/3.
//
//

#import "UserGuide.h"


@implementation UserGuide

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame withImageArray:(NSArray *)images {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        self.contentSize = CGSizeMake(images.count * frame.size.width, self.frame.size.height);
        self.pagingEnabled = YES;
        for (int i = 0; i < images.count; i++) {
            UIImage *image = [UIImage imageNamed:images[i]];
            UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
            imageView.userInteractionEnabled = YES;
            imageView.frame = CGRectMake(self.frame.size.width * i, 0, self.frame.size.width, self.frame.size.height);
            if (i == images.count - 1) {
                UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
                aButton.frame = CGRectMake(100, self.frame.size.height - 100, self.frame.size.width - 200, 42);
                [aButton setTitle:@"进入应用" forState:UIControlStateNormal];
                [aButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                [aButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
                aButton.userInteractionEnabled = YES;
                [imageView addSubview:aButton];
            }
            [self addSubview:imageView];
        }
    }
    return self;
}

- (void)buttonAction:(UIButton *)button {
    if (self.delegates && [self.delegates respondsToSelector:@selector(lastOneTap:)]) {
        [self.delegates lastOneTap:button];
    }
    //NSLog(@"进入");
}

@end
