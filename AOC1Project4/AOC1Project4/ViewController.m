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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    //self.view.backgroundColor = [UIColor colorWithRed:0.812 green:0.965 blue:0.976 alpha:1]; /*#cff6f9*/
    /* Instructions: DELETE FROM FINAL!! */
    
/* Section 1 Instructions: DELETE FROM FINAL!! */
/* Login */
    
    //DONE1. Create a UILabel near the top of your screen with the text "Username:" in it.
    //DONE2. Create a UITextField to the right of the username label.
    //DONE3. Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    //DONE4. Create another UILabel beneath with the default text "Please Enter Username".
    //5. Add a target to the UIButton to call a function called onClick when the user presses the Login button.
    //6. If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
    //7. Hint: NSString has a property called length that tells you how many characters are in the string.
    
    
    //Create UILabel for username
    UILabel *userLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f,15.0f,90.0f,35.0f)];
    if (userLabel != nil) {
        userLabel.text = @"Username: ";
        userLabel.textAlignment = NSTextAlignmentLeft;
        userLabel.textColor = [UIColor darkGrayColor];
        //Add Subview to add label in the view
        [self.view addSubview:userLabel];
    }
    
    //Create text field to enter username
    UITextField *userText = [[UITextField alloc] initWithFrame:CGRectMake(100.0f,15.0f,215.0f,35.0f)];
    if (userText != nil) {
        userText.borderStyle = UITextBorderStyleRoundedRect;
        //userText.backgroundColor = [UIColor darkGrayColor];
        userText.textColor = [UIColor whiteColor];
        //Add Subview to add text field in the view
        [self.view addSubview:userText];
    }
    
    //Create login button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil) {
        loginButton.frame = CGRectMake(110.0f, 60.0f, 100.0f, 50.0f);
        loginButton.tintColor = [UIColor greenColor];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton setTitle:@"Pushed" forState:UIControlStateHighlighted];
        //Add Subview to add button in the view
        [self.view addSubview:loginButton];
    }
    
    //Create notice UILable that says "Please Enter Username"
    UILabel *userNotice = [[UILabel alloc] initWithFrame:CGRectMake(0.0f,120.0f,320.0f,35.0f)];
    if (userNotice != nil) {
        userNotice.backgroundColor = [UIColor darkGrayColor];
        userNotice.text = @"Please Enter Username";
        userNotice.textAlignment = NSTextAlignmentCenter;
        userNotice.textColor = [UIColor whiteColor];
        //Add Subview to add label in the view
        [self.view addSubview:userNotice];
    }
    
/* Section 2 Instructions: DELETE FROM FINAL!! */
/*Date - this section will display a UIAlertView with the current date and time in it using an
NSDate object.*/
    
    //DONE1. Create a UIButton using the rounded rectangle type. Give this button any color you wish.
    //DONE2. Add the text "Show Date" to the button
    //3. Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.
    //4. Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.
    
    
    //Create Show Date button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil) {
        dateButton.frame = CGRectMake(110.0f, 250.0f, 100.0f, 50.0f);
        dateButton.tintColor = [UIColor blueColor];
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton setTitle:@"Pushed" forState:UIControlStateHighlighted];
        //Add Subview to add button in the view
        [self.view addSubview:dateButton];
    }
    
/* Section 3 Instructions: DELETE FROM FINAL!! */
/* Information - this section will display the text "This application was created by: Firstname
Lastname" in a label when the info button is clicked.*/
    
    //DONE1. Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.
    //2. Create a UILabel beneath it that contains no initial text.
    //3. Hook up an action to the info button to have it call the onClick handler you created earlier.
    //4. When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.
    
    
    //Create info button to display "created by" text
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil) {
        //infoButton.backgroundColor = [UIColor redColor];
        infoButton.frame = CGRectMake(145.0f, 350.0f, 30.0f, 30.0f);
        //Add Subview to add button in the view
        [self.view addSubview:infoButton];
    }
    
    /* End Instructions: DELETE FROM FINAL!! */
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
