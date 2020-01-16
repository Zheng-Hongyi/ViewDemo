//
//  RegistViewController.m
//  ViewDemo
//
//  Created by Yi on 2019/12/19.
//  Copyright © 2019 Yi. All rights reserved.
//

#import "RegistViewController.h"
#import "RegistView.h"

@interface RegistViewController () <RegisterViewProtocol>

@property (nonatomic, strong) RegistView *mainView;

@end

@implementation RegistViewController

- (void)loadView {
    self.mainView = [[RegistView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.mainView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configViews];
    self.presenter = [RegisterPresenter new];
    [self.presenter bind:self];
}

- (void)dealloc {
    NSLog(@"%s", __func__);
}

#pragma mark -

- (void)regist:(BOOL)success error:(NSString *)error {
    NSLog(@"regist info");
    if (success) {
        // TODO: 注册成功
    } else {
        
    }
}

#pragma mark -

- (void)configViews {
    self.title = @"注册";
    __weak typeof(self) weakSelf = self;
    self.mainView.registCallBack = ^(NSString * _Nonnull userName, NSString * _Nonnull userPswd, NSString * _Nonnull userAgainPswd) {
        if (nil != weakSelf) {
            [weakSelf.presenter registWithUserName:userName password:userPswd];
        }
        NSLog(@"%@ %@ %@", userName, userPswd, userAgainPswd);
    };
}


@end
