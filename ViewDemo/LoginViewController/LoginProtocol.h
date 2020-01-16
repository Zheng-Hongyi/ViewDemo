//
//  LoginProtocol.h
//  ViewDemo
//
//  Created by Yi on 2020/1/13.
//  Copyright © 2020 Yi. All rights reserved.
//

#ifndef LoginProtocol_h
#define LoginProtocol_h

@protocol LoginProtocol <NSObject>

@required

- (void)login:(BOOL)success error:(NSString *)error;
- (void)test;

@end


#endif /* LoginProtocol_h */
