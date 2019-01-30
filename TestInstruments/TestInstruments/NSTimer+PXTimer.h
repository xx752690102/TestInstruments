//
//  NSTimer+PXTimer.h
//  TestInstruments
//
//  Created by 彭星 on 2019/1/24.
//  Copyright © 2019 xgb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (PXTimer)
+ (id)bk_scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)(NSTimer *timer))block repeats:(BOOL)inRepeats;
@end

NS_ASSUME_NONNULL_END
