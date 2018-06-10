//
//  ViewController.m
//  Demo
//
//  Created by tu on 2018/6/10.
//  Copyright © 2018 demo. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showTabbarVC:(id)sender {
    UITabBarController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"tabbar"];
    [self presentViewController:vc animated:YES completion:^{
        AppDelegate *del = (AppDelegate *)UIApplication.sharedApplication.delegate;
        del.window.rootViewController = vc;
        
    }];
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
