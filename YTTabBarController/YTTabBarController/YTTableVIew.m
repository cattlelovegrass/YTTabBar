//
//  YTTableVIew.m
//  YTTabBarController
//
//  Created by youyou on 15/12/6.
//  Copyright © 2015年 youyou. All rights reserved.
//

#import "YTTableVIew.h"

@implementation YTTableVIew

-(id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if(self) {
        self.delegate = self;
        self.dataSource = self;
        UIView *footerView = [[UIView alloc]init];
        footerView.backgroundColor = [UIColor whiteColor];
        [self setTableFooterView:footerView];
      
    }
    return self;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ident = @"ident";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ident];
    if(cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ident];
    }
    cell.textLabel.text = self.titleString;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
