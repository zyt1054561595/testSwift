//
//  KTLNavigationController.h
//  testSwift
//
//  Created by zyt on 2019/10/10.
//  Copyright © 2019 zyt. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KTLNavigationController : UINavigationController
@property(strong,nonatomic)UIScreenEdgePanGestureRecognizer *panGestureRec;
@end

NS_ASSUME_NONNULL_END
