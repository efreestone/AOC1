//
//  AppDelegate.m
//  AOC1Project1
//
//  Created by Elijah Freestone on 5/7/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];    
    
    //Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
    float time = 30.9999f;
    float speed = 2.0f;
    float timeLeft = speed * time;
    int math = (int) timeLeft;
    NSLog(@"There is currently %f minutes left.", time);
    NSLog(@"There is now %d minutes left.", math);
    
    
    //Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
    //Use an if, else if and else check using any of the data types of your choice.
    float test = 3;
    int hello = 0;
    BOOL myBool = YES;
    
    if ((test > 4) && (hello != 5)) {
        NSLog(@"Only one thing smells like bacon, thats bacon.");
    }
    else if ((myBool = YES) || (hello > 2)) {
        NSLog(@"Spam, spam, bacon, eggs, and spam.");
    }
    else {
        NSLog(@"My spoon is too big!");
    }
    
    //Perform a single for loop printing out values to the console
    for (int i = 1; i <= 2; i++) {
        NSLog(@"Detination in T minus %d minutes.", i);
    }
    
    //Perform a nested loop printing out values to the console
    
    for (int c = 5; c >= 1; c--) {
        NSLog(@"I have %d pieces of bacon. Mmmm bacon *drools*", c);
        for (int i = 3; i >= 1; i--) {
            NSLog(@"There are %d pieces of bacon and %d minutes.", c, i);
        }
        //break;
    }
    NSLog(@"No more bacon :(");
    
    
    //Perform a while loop that increments an int variable and outputs to the console.
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

/*for (int c = 1; c <= 3; c++)
{
    NSLog(@"Using color filter number %d", c);
    for (int i = 1; i<= 10; i++)
    {
        NSLog(@"Collecting image data with filter number %d for %d minutes.", c, i);
    }
}*/
