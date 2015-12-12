//
//  BaseTableViewCell.m
//  YTTabBarController
//
//  Created by xingfa.zhou on 15/12/7.
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
