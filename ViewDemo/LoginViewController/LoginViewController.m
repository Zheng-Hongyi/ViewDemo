//
//  LoginViewController.m
//  ViewDemo
//
//  Created by Yi on 2019/12/18.
//  Copyright © 2019 Yi. All rights reserved.
//

#import "LoginViewController.h"
#import "RegistViewController.h"
#import "LoginView.h"

@interface LoginViewController ()

@property (nonatomic, weak) LoginView *mainView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Action

- (IBAction)loginAction:(id)sender {
}

- (IBAction)registAction:(id)sender {
    RegistViewController *vc = [RegistViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}


#pragma mark - View

- (LoginView *)mainView {
    return (LoginView *)self.view;
}


@end
