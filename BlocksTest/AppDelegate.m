//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Eddie on 06.07.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "AppDelegate.h"
#import "EGBObject.h"
#import "EGBStudent.h"

typedef void (^MyBlock) (void);
typedef NSInteger (^MyBlock2) (void);
typedef void (^MyBlock3) (NSString*);

typedef void (^OurTestBlock) (void);
typedef NSString* (^OurTestBlock2) (NSInteger);

@interface AppDelegate ()

@property (copy, nonatomic) OurTestBlock testBlock;
@property (strong, nonatomic) NSString* name;

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
    */
  
    /*
    void (^ccc)(void);
    
    ccc = ^{
        NSLog(@"BLOCK!!!");
    };
    
    [self testBlocksMethod:ccc];
    
    
    OurTestBlock2 tb = ^(NSInteger intValue) {
        return [NSString stringWithFormat:@"%ld", (long)intValue];
    };
    
    NSLog(@"%@", tb(5));
    */

    
    /*
     EGBObject* obj = [[EGBObject alloc] init];
     obj.name = @"Object";
     
     __weak EGBObject* weakObj = obj;
     
     self.testBlock = ^{
     NSLog(@"%@", obj.name);
     };
     
     self.testBlock();
     */
    
    /*
    self.name = @"Hello";
    
    EGBObject* obj1 = [[EGBObject alloc] init];
    obj1.name = @"Object";
    
    [obj1 testMethod:^{
        NSLog(@"%@", self.name);
    }];
    */
   
    /*
    //Level Learner
    
    // 1. В апп делегате создайте блок с без возвращаемой переменной и без параметров и вызовите его.
    
    //void (^myBlock) (void);
    
    MyBlock myBlock = ^{
        NSLog(@"My block is active!");
    };
    
    myBlock();
    
    //NSInteger (^myBlock2) (void);
    
    MyBlock2 myBlock2 = ^{
        NSInteger intValue = 5;
        return intValue;
    };
    
    NSLog(@"%ld", (long)myBlock2());
    
    // 2. Создайте блоки с параметрами и передайте туда строку, которую выведите на экран в последствии.
    // 3. Если вы не определили тип данных для ваших блоков, то сделайте это сейчас и используйте их
    
    NSString* string = @"Output of block string";
    
    MyBlock3 myBlock3 = ^(NSString* string) {
        NSLog(@"%@", string);
    };
    
    myBlock3(string);
    
    // 4. Создайте метод который принимает блок и вызывает его и вызовите этот метод
    
    [self myMethodWithBlock:myBlock];
     */
    
    EGBStudent* student0 = [[EGBStudent alloc] init];
    student0.name = @"John";
    student0.lastName = @"Petrucci";
    
    EGBStudent* student1 = [[EGBStudent alloc] init];
    student1.name = @"Tommy";
    student1.lastName = @"Iommi";
    
    EGBStudent* student2 = [[EGBStudent alloc] init];
    student2.name = @"Steve";
    student2.lastName = @"Vai";
    
    EGBStudent* student3 = [[EGBStudent alloc] init];
    student3.name = @"Zakk";
    student3.lastName = @"Whylde";
    
    EGBStudent* student4 = [[EGBStudent alloc] init];
    student4.name = @"Paul";
    student4.lastName = @"Gilbert";
    
    EGBStudent* student5 = [[EGBStudent alloc] init];
    student5.name = @"Richi";
    student5.lastName = @"Blackmoor";
    
    EGBStudent* student6 = [[EGBStudent alloc] init];
    student6.name = @"Ozzy";
    student6.lastName = @"Osborn";
    
    EGBStudent* student7 = [[EGBStudent alloc] init];
    student7.name = @"Randy";
    student7.lastName = @"Roads";
    
    EGBStudent* student8 = [[EGBStudent alloc] init];
    student8.name = @"Nick";
    student8.lastName = @"Petrucci";
    
    EGBStudent* student9 = [[EGBStudent alloc] init];
    student9.name = @"David";
    student9.lastName = @"Gilbert";
    
    NSArray* studentsArray = [[NSArray alloc] initWithObjects:student0, student1, student2, student3, student4, student5, student6, student7, student8, student9, nil];
    
    for (int i = 0; i < [studentsArray count]; i++) {
        EGBStudent* obj = [studentsArray objectAtIndex:i];
        NSLog(@"Name = %@, Surname = %@", obj.name, obj.lastName);
    }
    
    
    NSArray *sortedArray = [studentsArray sortedArrayUsingComparator: ^(EGBStudent* obj1, EGBStudent* obj2) {
        
        if (obj1.lastName != obj2.lastName) {
            if (obj1.lastName > obj2.lastName) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if (obj1.lastName < obj1.lastName) {
                return (NSComparisonResult)NSOrderedAscending;
            }
                    return (NSComparisonResult)NSOrderedSame;
        } else {
            if (obj1.name > obj2.name) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if (obj1.name < obj1.name) {
                return (NSComparisonResult)NSOrderedAscending;
            }
                    return (NSComparisonResult)NSOrderedSame;
        }
        

    }];
    
    NSLog(@" ");
    NSLog(@"Sorted array:");
    for (int i = 0; i < [sortedArray count]; i++) {
        EGBStudent* obj = [sortedArray objectAtIndex:i];
        NSLog(@"Name = %@, Surname = %@", obj.name, obj.lastName);
        
    }
    

    
    
    /*
     NSArray *sortedArray = [studentsArray sortedArrayUsingComparator: ^(EGBStudent* obj1, EGBStudent* obj2) {
     
     if (obj1.lastName > obj2.lastName) {
     return (NSComparisonResult)NSOrderedDescending;
     }
     
     if (obj1.lastName < obj1.lastName) {
     return (NSComparisonResult)NSOrderedAscending;
     }
     return (NSComparisonResult)NSOrderedSame;
     }];
     
     */
    
    
    return YES;
}

- (void) myMethodWithBlock:(void (^)(void)) myBlock {
    
    NSLog(@"myMethodWithBlock");
    myBlock();
}

- (void) testBlocksMethod: (void (^)(void)) testBlock {
    
    NSLog(@"testBlocksMethod");
    
    testBlock();
    testBlock();
    testBlock();
    testBlock();
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
