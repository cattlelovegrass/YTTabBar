//
//  BaseTableViewCell.m
//  YTTabBarController
//

//  Copyright © 2015年 youyou. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configWithModel:(id)model atIndexPath:(NSIndexPath *)indexPath{
    NSAssert(YES, @"should be implemented by subClass");
}
@end
