//
//  ContactsViewController.m
//  YTTabBarController
//
//  Created by youyou on 15/12/6.
//  Copyright © 2015年 youyou. All rights reserved.
//

#import "ContactsViewController.h"
#import "YTTableVIew.h"

@interface ContactsViewController ()
//@property(nonatomic,strong)
@end

@implementation ContactsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的通讯录";
    YTTableVIew *tableView = [[YTTableVIew alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height) style:UITableViewStylePlain];
//    tableView.titleString = @"hello world";
    tableView.multipleSection = YES;
    tableView.items =  @[@[@"张三",@"李四"],@[@"王五",@"赵六"]];
    tableView.tableviewCellSelectHandel = ^(NSIndexPath *index,id model){
        NSString *name = model;
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:name message:@"Hello world!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    };
    
    [self.view addSubview:tableView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
