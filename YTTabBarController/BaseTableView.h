//
//  BaseTableView.h
//  Base
//
//  Created by xingfa.zhou on 15/12/7.
//  Copyright © 2015年 youyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableView : UITableView<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) NSArray *items;
@property(nonatomic,assign) BOOL multipleSection;

@property(nonatomic,copy) void (^tableviewCellSelectHandel)(NSIndexPath *indexPath,id model);



- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style reuseCellNibName:(NSString *)nibName;

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style reuseCellClassName:(NSString *)className;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
