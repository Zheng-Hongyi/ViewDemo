//
//  RegistViewController.m
//  ViewDemo
//
//  Created by Yi on 2019/12/19.
//  Copyright © 2019 Yi. All rights reserved.
//

#import "RegistViewController.h"
#import "RegistView.h"

@interface RegistViewController ()

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
}




@end
