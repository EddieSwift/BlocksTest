//
//  EGBObject.m
//  BlocksTest
//
//  Created by Eddie on 11.07.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "EGBObject.h"

@interface EGBObject ()

@property (copy, nonatomic) ObjectBlock objectBlock;

@end


@implementation EGBObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        __weak EGBObject* weakSelf = self;
        
        self.objectBlock = ^{
            NSLog(@"%@", weakSelf.name);
        };
    }
    return self;
}

-(void) dealloc {
    NSLog(@"EGBObject is deallocated");
}

-(void) testMethod: (ObjectBlock) block {
    block();
}

@end

