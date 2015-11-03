//
//  UserGuide.h
//  
//
//  Created by 王力 on 15/11/3.
//
//

#import <UIKit/UIKit.h>



@protocol UserGuideDelegate <NSObject>

//引导进行完毕,进去下一页
- (void)lastOneTap:(UIButton *)btn;

@end
@interface UserGuide : UIScrollView


@property(nonatomic, weak) id<UserGuideDelegate> delegates;
/**
 *  用户引导界面制作
 *
 *  @param frame  scrollView的frame
 *  @param images 引导图片数组
 *
 *  @return 用户引导界面
 */
- (instancetype)initWithFrame:(CGRect)frame withImageArray:(NSArray *)images;
@end
