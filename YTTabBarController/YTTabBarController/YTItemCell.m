//
//  YTItemCell.m
//  YTTabBarController
//
//  Created by xingfa.zhou on 15/12/7.
//  Copyright © 2015年 youyou. All rights reserved.
//

#import "YTItemCell.h"

@implementation YTItemCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)configWithModel:(NSString *)model atIndexPath:(NSIndexPath *)indexPath{
    self.textLabel.text = model;
}

@end
