//
//  EGBObject.h
//  BlocksTest
//
//  Created by Eddie on 11.07.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef void (^ObjectBlock) (void);

@interface EGBObject : NSObject


@property (strong, nonatomic) NSString* name;

-(void) testMethod: (ObjectBlock) block;

@end
