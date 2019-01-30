//
//  NSTimer+PXTimer.m
//  TestInstruments
//
//  Created by 彭星 on 2019/1/24.
//  Copyright © 2019 xgb. All rights reserved.
//

#import "NSTimer+PXTimer.h"

@implementation NSTimer (PXTimer)
+ (id)bk_scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)(NSTimer *timer))block repeats:(BOOL)inRepeats
{
    NSParameterAssert(block != nil);
    return [self scheduledTimerWithTimeInterval:inTimeInterval target:self selector:@selector(bk_executeBlockFromTimer:) userInfo:[block copy] repeats:inRepeats];
}

+ (void)bk_executeBlockFromTimer:(NSTimer *)aTimer
{
    void (^block)(NSTimer *) = [aTimer userInfo];
    if (block) block(aTimer);
}
@end
