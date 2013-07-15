/**
	@file	InfoViewController.h
	@author	Carlin
	@date	7/12/13
	@brief	iOSProjectTemplate
*/
//  Copyright (c) 2013 Carlin. All rights reserved.


#import <UIKit/UIKit.h>

@class InfoViewController;
@protocol InfoViewControllerDelegate <NSObject>
@optional
- (void)infoViewController:(InfoViewController*)vc willCloseAnimated:(bool)animated;
@end

@interface InfoViewController : UIViewController<
	UITableViewDataSource, UITableViewDelegate
>
@property (nonatomic, weak) id<InfoViewControllerDelegate> delegate;
@end
