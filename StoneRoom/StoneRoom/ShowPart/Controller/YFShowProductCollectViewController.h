//
//  YFShowProductCollectViewController.h
//  StoneRoom
//
//  Created by 王一凡(寿险总部技术开发部新产品技术组) on 2017/5/4.
//  Copyright © 2017年 王一凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YFShowProductCollectViewControllerDelegate <NSObject>

@required
- (void)didScrollWithCollectView:(UICollectionView *)collectView;
@optional
- (void)PushVC:(UIViewController *)vc;

@end

@interface YFShowProductCollectViewController : UIViewController

@property (nonatomic, assign) id<YFShowProductCollectViewControllerDelegate> delegate;

@end
