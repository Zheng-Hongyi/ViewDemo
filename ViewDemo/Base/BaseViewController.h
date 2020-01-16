//
//  BaseViewController.h
//  ViewDemo
//
//  Created by Yi on 2020/1/7.
//  Copyright © 2020 Yi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasePresenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController <__covariant T : BasePresenter * > : UIViewController

@property (nonatomic, strong) T presenter;

@end

NS_ASSUME_NONNULL_END
