//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Eddie on 06.07.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    [self testMethod];
     
    [self testMethidWithParams: @"Test string" value:11];
     
     NSString* result = [self testMethodWithReturnParams:@"Test string with return params" value:222];
     NSLog(@"%@", result);
     
  
    
    void (^testBlock) (void);
    
    testBlock = ^{
        NSLog(@"test block!");
    };
    
    testBlock();
    testBlock();
    testBlock();
    
    void (^testBlockWithParams) (NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
        NSLog(@"testBlockWithParams %@ %ld", string, (long)intValue);
    };
    
    testBlockWithParams(@"TEST STRING", 111);
    
    NSString* (^testBlockWithReturnParams) (NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
        return [NSString stringWithFormat:@"testMethodWithReturneParams %@ %ld", string, intValue];
    };
    
    NSString* result = testBlockWithReturnParams(@"Test string with return params",222);
    
    NSLog(@"%@", result);
     
    */
    
    __block NSString* testString = @"How is it possible?";
    
    __block NSInteger i = 0;
    
    void (^testBlock2) (void);
    
    testBlock2 = ^{
        NSLog(@"test block!");
        
        i = i + 1;
        //NSLog(@"%ld", (long)++i);
        testString = [NSString stringWithFormat:@"How is it possible? %ld", (long)i];
        NSLog(@"%@", testString);
    };
    
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    
    
    
    return YES;
}

- (void) testMethod {
    NSLog(@"test method!");
}

- (void) testMethidWithParams: (NSString*) string value: (NSInteger) intValue {
    NSLog(@"testMethidWithParams %@ %ld", string, (long)intValue);
}

- (NSString*) testMethodWithReturnParams: (NSString*) string value: (NSInteger) intValue {
    return [NSString stringWithFormat:@"testMethodWithReturneParams %@ %ld", string, intValue];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
