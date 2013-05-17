//  Elijah Freestone
//  AOC1 1305
//  Project 2
//  May 14th, 2013

//
//  AppDelegate.m
//  AOC1Project2
//
//  Created by Elijah Freestone on 5/14/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[[MainViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil] autorelease];
    } else {
        self.viewController = [[[MainViewController alloc] initWithNibName:@"ViewController_iPad" bundle:nil] autorelease];
    }
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    //Project instructions (delete before submitting!! Also on MainViewController.m)
    //DONE1.Change the background color of the view to any color you wish. 
    
    
    //Book Information and UILabels
    
    //1.Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.
    
    //2.Create another label that contains the text "Author:" with the text right justified.
    
    //3.Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
    
    //4.Create a UILabel on the next line called "Published:". This text is right justified.
    
    //5.Create a label next to the Published label and add the text of when the book was published. This text is left justified.
    
    //6.Create a UILabel with the text "Summary". This text is left justified.
    
    //7.Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
    
    
    //Labels and Arrays
    
    //1.Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
    
    //2.Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
    
    //3.Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
    
    //4.Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    
    //Make sure that all code is presented neatly and logically AND refactored as much as possible.
    
    
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
