//  Elijah Freestone
//  AOC1 1305
//  Project 4
//  May 27th, 2013

//
//  ViewController.m
//  AOC1Project4
//
//  Created by Elijah Freestone on 5/27/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ViewController.h"

//define loginButton tag as 0
#define LOGIN_BUTTON 0
//define dateButton tag as 1
#define DATE_BUTTON 1
//define infoButton tag as 2
#define INFO_BUTTON 2

@interface ViewController ()

@end

@implementation ViewController

//Create onClick function to be called by each button based on tag number defined above
-(void)onClick:(UIButton*)buttonClicked {
    if (buttonClicked.tag == LOGIN_BUTTON) { //loginButton
        //Save username text input to variable userInput to check length and append to another string later. 
        NSString *userInput = [userTextfield text];
        //Check to make sure a username was entered with .length property
        if (userInput.length > 0) {
            //Create NSString to be displayed as userNotice.text with userInput appended
            NSString *userInfo = [[NSString alloc] initWithFormat:@"User: %@ has been logged in", userInput];
            //Add second line if username is longer than 9 characters. 10 works in most cases but adds ... if wider characters (like W) are used
            if (userInfo.length > 34) {
                userNotice.frame = CGRectMake(0.0f,120.0f,320.0f,60.0f);
                userNotice.numberOfLines = 2;
            } else {
                userNotice.frame = CGRectMake(0.0f,120.0f,320.0f,35.0f);
                userNotice.numberOfLines = 1;
            }
            userNotice.backgroundColor = [UIColor blueColor];
            userNotice.textColor = [UIColor whiteColor];
            //Apply userInfo string to .text
            userNotice.text = userInfo;
            //Hide keyboard after loginButton has been pressed
            [userTextfield resignFirstResponder];
        } else { //Display error message if no username was entered
            userNotice.backgroundColor = [UIColor redColor];
            userNotice.textColor = [UIColor blackColor];
            //Change .text to error message
            userNotice.text = @"Username cannot be empty";
            //Override element height if third "if" statement was hit
            userNotice.frame = CGRectMake(0.0f,120.0f,320.0f,35.0f);
            //Hide keyboard after loginButton has been pressed
            [userTextfield resignFirstResponder];
        }
    } else if (buttonClicked.tag == DATE_BUTTON) { //dateButton
        //Grab current date
        NSDate *currentDate = [NSDate date];
        //Format date to prep for display
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil) {
            [dateFormatter setDateFormat:@"MMMM dd, yyyy hh:mm:ss a zzzz"];
            NSString *formattedDate = [dateFormatter stringFromDate:currentDate];
            //Create UIAlertView variable and inject NSString of current date
            UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date & Time" message:formattedDate delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            if (dateAlert != nil) {
                [dateAlert show];
            }
        }
    } else if (buttonClicked.tag == INFO_BUTTON) { //infoButton
        emptyLabel.text = @"This application was created by:\n Elijah Freestone";
        //Add Subview to add label in the view
        [self.view addSubview:emptyLabel];
    } else {
        NSLog(@"Whoops! No button tag number. I think you broke it!");
    }
}

- (void)viewDidLoad
{
    //Set background color to light gray to show highlight of info button
    self.view.backgroundColor = [UIColor lightGrayColor];
    
/* Section 1: Login */

    //Create UILabel for username
    UILabel *userLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f,15.0f,90.0f,35.0f)];
    if (userLabel != nil) {
        userLabel.backgroundColor = [UIColor lightGrayColor];
        userLabel.text = @"Username: ";
        userLabel.textAlignment = NSTextAlignmentLeft;
        userLabel.textColor = [UIColor blackColor];
        //Add Subview to add label in the view
        [self.view addSubview:userLabel];
    }
    
    //Create text field to enter username. Declared in .h
    userTextfield = [[UITextField alloc] initWithFrame:CGRectMake(100.0f,15.0f,215.0f,35.0f)];
    if (userTextfield != nil) {
        userTextfield.borderStyle = UITextBorderStyleRoundedRect;
        //Add Subview to add text field in the view
        [self.view addSubview:userTextfield];
    }
    
    //Create login button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil) {
        loginButton.frame = CGRectMake(110.0f, 60.0f, 100.0f, 50.0f);
        loginButton.tintColor = [UIColor greenColor];
        //Give button tag number
        loginButton.tag = LOGIN_BUTTON;
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton setTitle:@"Pushed" forState:UIControlStateHighlighted];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        //Add Subview to add button in the view
        [self.view addSubview:loginButton];
    }
    
    //Create notice UILable that says "Please Enter Username", changed with press of loginButton. Declared in .h
    userNotice = [[UILabel alloc] initWithFrame:CGRectMake(0.0f,120.0f,320.0f,35.0f)];
    if (userNotice != nil) {
        userNotice.backgroundColor = [UIColor darkGrayColor];
        userNotice.text = @"Please Enter Username";
        userNotice.textAlignment = NSTextAlignmentCenter;
        userNotice.textColor = [UIColor whiteColor];
        //Add Subview to add label in the view
        [self.view addSubview:userNotice];
    }
    
/* Section 2: Date */
    
    //Create Show Date button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil) {
        dateButton.frame = CGRectMake(110.0f, 225.0f, 100.0f, 50.0f);
        dateButton.tintColor = [UIColor yellowColor];
        //Give button tag number
        dateButton.tag = DATE_BUTTON;
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton setTitle:@"Pushed" forState:UIControlStateHighlighted];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        //Add Subview to add button in the view
        [self.view addSubview:dateButton];
    }
    
    //NSDate object is defined and displayed in onClick
    
/* Section 3: Information */
    
    //Create info button to display "created by" text
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil) {
        //infoButton.backgroundColor = [UIColor redColor];
        infoButton.frame = CGRectMake(145.0f, 345.0f, 30.0f, 30.0f);
        //Give button tag number
        infoButton.tag = INFO_BUTTON;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        //Add Subview to add button in the view
        [self.view addSubview:infoButton];
    }
    
    //Create empty UILabel to later display "created by" text. Declared in .h
    emptyLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f,375.0f,320.0f,60.0f)];
    if (emptyLabel != nil) {
        emptyLabel.backgroundColor = [UIColor darkGrayColor];
        emptyLabel.textAlignment = NSTextAlignmentCenter;
        emptyLabel.textColor = [UIColor whiteColor];
        emptyLabel.numberOfLines = 2;
        //addSubview is called inside onClick
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
