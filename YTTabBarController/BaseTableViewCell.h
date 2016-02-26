//
//  BaseTableViewCell.h
//  YTTabBarController
//

//  Copyright © 2015年 youyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BaseCellDataProtool <NSObject>

- (void)configWithModel:(id)model atIndexPath:(NSIndexPath *)indexPath;

@end


@interface BaseTableViewCell : UITableViewCell<BaseCellDataProtool>

@end
