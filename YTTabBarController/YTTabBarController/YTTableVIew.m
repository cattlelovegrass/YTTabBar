//
//  YTTableVIew.m
//  YTTabBarController
//
//  Created by youyou on 15/12/6.
//  Copyright © 2015年 youyou. All rights reserved.
//

#import "YTTableVIew.h"
#import "YTItemCell.h"

@implementation YTTableVIew

-(id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style reuseCellClassName:@"YTItemCell"];
    if(self) {
        
        UIView *footerView = [[UIView alloc]init];
        footerView.backgroundColor = [UIColor whiteColor];
        [self setTableFooterView:footerView];
      
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YTItemCell *cell = (YTItemCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    return 30;
//}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 50;
//}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
