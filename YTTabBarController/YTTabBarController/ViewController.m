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
    MineViewController *mine = [[MineViewController alloc]init];
    [self setupChildViewController:mine title:@"我的" imageName:@"mine.png" selectedImageName:@"mineH.png"];
    
    ContactsViewController *contacts = [[ContactsViewController alloc]init];
    [self setupChildViewController:contacts title:@"联系人" imageName:@"contact.png" selectedImageName:@"contactH.png"];
    
    CompanyViewController *company = [[CompanyViewController alloc]init];
    [self setupChildViewController:company title:@"公司" imageName:@"company.png" selectedImageName:@"companyH.png"];
    
}
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    UINavigationController *rootNav = [[UINavigationController  alloc]initWithRootViewController:childVc];
    childVc.tabBarItem = [[UITabBarItem alloc]initWithTitle:title image:[UIImage imageNamed:imageName] selectedImage:[UIImage imageNamed:selectedImageName]];
    [self addChildViewController:rootNav];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
