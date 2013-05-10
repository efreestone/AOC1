//  Elijah Freestone
//  AOC1 1305
//  Project 1
//  May 9th, 2013


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
    
    //Start of my story
    NSLog(@"Hello, my name is Elijah Freestone and tonight we will be making bacon cheese-burgers for some co-workers.");
    NSLog(@"Our dinner guest will be arriving soon.");
    
    //Cast float to int and log both to display when guests will be arriving for dinner.
    float time = 30.5f;
    float traffic = 2;
    float timeLeft = traffic * time;
    int math = (int) timeLeft;
    
    NSLog(@"Our guests should arrive in %.1f minutes. I should call them to check if they are on schedule.", time);
    NSLog(@"Looks like traffic is bad. They will now be arriving in %d minutes.", math);
    NSLog(@"There is also three of them instead of two. I sure hope I have enough burgers!");
    
    //Perform an AND, OR comparison using float, int and BOOL. This is combined with my if, else if, else statement to decide what will be for dinner tonight
    float peopleEating = 4;
    int burgers = 5;
    BOOL isGrillClean = YES;
    
    if ((peopleEating > 4) || (burgers != 5)) {
        NSLog(@"Maybe grilled cheese would be a better option.");
    }
    else if ((isGrillClean == YES) && (burgers > 4)) {
        NSLog(@"Bacon cheese burgers it is.");
    }
    else {
        NSLog(@"I guess we could have salad...");
    }
    
    NSLog(@"Time to get the grill going.");
    
    //Single for loop logging how long until the grill is ready to cook on.
    for (int i = 3; i >= 1; i--) {
        NSLog(@"T minus %d minutes until the grill is ready.", i);
    }
    
    NSLog(@"Burgers are on. Time to slice some cheese for them.");
    
    //Nested loop to log number cheese slices cut and countdown for when burgers will be ready
    for (int cheese = 1; cheese <= 4; cheese++) {
        NSLog(@"I have %d pieces of cheese sliced.", cheese);
        for (int burgerTime = 6; burgerTime >= 4; burgerTime--) {
            NSLog(@"%d cheese slices ready, and the burgers have %d minutes left.", cheese, burgerTime);
        } //This doesn't display quite the way I want it to yet. Still trying to work out a fix.
        //break;
    }
    
    NSLog(@"Burgers are almost done. Time to cook the bacon.");
    
    //While loop logging how long the bacon has left.
    int minutesLeft = 4;
    
    while (minutesLeft > 2) {
        NSLog(@"%d minutes left until the bacon is ready.", minutesLeft);
        minutesLeft --;
    }
    
    NSLog(@"Our guests have arrived and dinner is almost done.");
    NSLog(@"Bacon is done! Time to eat!");
    NSLog(@"Yum!");
    //End of my story
    
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
