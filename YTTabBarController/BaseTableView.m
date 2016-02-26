//
//  BaseTableView.m
//  Base
//

//  Copyright © 2015年 youyou. All rights reserved.
//

#import "BaseTableView.h"
#import "BaseTableViewCell.h"

@interface BaseTableView ()
@property(nonatomic,strong) NSString *reuseIdentifier;
@end

@implementation BaseTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style reuseCellNibName:(NSString *)nibName{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
        self.items = [NSArray array];
        self.reuseIdentifier = nibName;
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:nibName];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style reuseCellClassName:(NSString *)className{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
        self.reuseIdentifier = className;
        self.items = [NSArray array];
        [self registerClass:NSClassFromString(className) forCellReuseIdentifier:className];
        
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.multipleSection) {
        return [self.items[indexPath.section] objectAtIndex:indexPath.row];
    }
    return self.items[indexPath.row];
}

#pragma mark --
- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView{
    if (self.multipleSection) {
        return self.items.count;
    }
    return 1;
}

- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.multipleSection) {
        return [self.items[section] count];
    }
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.reuseIdentifier];
    id model = [self itemAtIndexPath:indexPath];
    if ([cell respondsToSelector:@selector(configWithModel:atIndexPath:)]) {
        id<BaseCellDataProtool> theCell = (id<BaseCellDataProtool>)cell;
        [theCell configWithModel:model atIndexPath:indexPath];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.tableviewCellSelectHandel) {
         id model = [self itemAtIndexPath:indexPath];
        self.tableviewCellSelectHandel(indexPath,model);
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
