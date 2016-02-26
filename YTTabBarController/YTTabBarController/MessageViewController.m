//
//  MessageViewController.m
//  YTTabBarController
//
//  Created by LinShang on 16/2/25.
//  Copyright © 2016年 youyou. All rights reserved.
//

#import "MessageViewController.h"
#import "YTTableVIew.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        self.tabBarController.tabBar.hidden = NO;
        self.title = @"消息";
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    YTTableVIew *tableView = [[YTTableVIew alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height) style:UITableViewStyleGrouped];
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
