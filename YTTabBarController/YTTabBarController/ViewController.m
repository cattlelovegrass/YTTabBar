//
//  ViewController.m
//  YTTabBarController
//
//  Created by youyou on 15/12/6.
//  Copyright © 2015年 youyou. All rights reserved.
//

#import "ViewController.h"
#import "MineViewController.h"
#import "ContactsViewController.h"
#import "CompanyViewController.h"
#import "MessageViewController.h"
//#import "DWTabBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUpAllChildViewControllers];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)setUpAllChildViewControllers
{
    MessageViewController *message = [[MessageViewController alloc]init];
    [self setupChildViewController:message title:@"消息" imageName:@"message.png" selectedImageName:@"messageH.png"];
    
    MineViewController *mine = [[MineViewController alloc]init];
    [self setupChildViewController:mine title:@"我的" imageName:@"setting.png" selectedImageName:@"settingH.png"];
    
    MineViewController *addmine = [[MineViewController alloc]init];
    [self setupChildViewController:addmine title:nil imageName:@"appAdd.png" selectedImageName:@"addAdd.png"];
    addmine.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    
    ContactsViewController *contacts = [[ContactsViewController alloc]init];
    [self setupChildViewController:contacts title:@"联系人" imageName:@"contact.png" selectedImageName:@"contactH.png"];
    
    CompanyViewController *company = [[CompanyViewController alloc]init];
    [self setupChildViewController:company title:@"公司" imageName:@"contact.png" selectedImageName:@"contactH.png"];
    
}
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    UINavigationController *rootNav = [[UINavigationController  alloc]initWithRootViewController:childVc];
    UIImage *unselectImage = [[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage = [[UIImage imageNamed:selectedImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem = [[UITabBarItem alloc]initWithTitle:title image:unselectImage selectedImage:selectImage];
    [self addChildViewController:rootNav];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
