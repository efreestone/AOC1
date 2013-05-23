//  Elijah Freestone
//  AOC1 1305
//  Project 3
//  May 20th, 2013

//
//  ViewController.m
//  AOC1Project3
//
//  Created by Elijah Freestone on 5/20/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//"Add" function takes two integers, adds them and returns the result. Called and stored w/ myResult
-(int)Add:(NSInteger)numberOne toInteger:(NSInteger)numberTwo {
    return (numberOne + numberTwo);
}

//"Compare" function compares 2 NSIntegers and returns YES or NO based on if they are equal. Called and stored w/ myBool
-(BOOL)Compare:(NSInteger)boolOne toInteger:(NSInteger)boolTwo {
    if (boolOne == boolTwo){
        return YES;
    }
    else {
        return NO;
    }
}

//"Append" function combines 2 NSStrings with append and returns a combined NSString. Called w/ newString
-(NSString*)Append:(NSString*)stringOne toString:(NSString*)stringTwo {
    NSMutableString *appendString = [[NSMutableString alloc] initWithString:stringOne];
    NSString *combinedString = [appendString stringByAppendingString:stringTwo];
    return combinedString;
}

//"displayAlertWithString" function creates the parameters for my UIAlert
-(void)displayAlertWithString:(NSString*)alertDialog {
    UIAlertView *displayAlert = [[UIAlertView alloc] initWithTitle:@"Message" message:alertDialog delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if (displayAlert != nil) {
        [displayAlert show];
    }
}



- (void)viewDidLoad
{
    //Instructions - DELETE FROM FINAL!!
    /*Create a new single-view application project. All of your initial code will take place in the
    viewDidLoad function of your viewController.m.
    The project is broken down into sections*/
    
    //DONE1. Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
    //DONE2. Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
    //DONE3. Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
    //DONE4. Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    //DONE5. Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
    //DONE6. Call the Add function passing in two integer values. Capture the return of this function into a variable.
    //DONE7. Bundle the returned integer (from Add)into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    //???8. Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    //9. Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    //DisplayAlertWithString Function
    //1. Take the passed in NSString and display it in the alert view
    //2. Create an UIAlertView
    
    /* Due: Thu, 23 May */
    //End of instructions - DELETE FROM FINAL!!

    
    //Call "Add" function and test
    int myResult = [self Add:2 toInteger:7];
    NSLog(@"%d out of 10 people love bacon.", myResult);
    
    //Call "Compare" function and test
    BOOL myBool = [self Compare:5 toInteger:5];
    NSLog(@"Would you like some bacon? %@!", myBool ? @"YES" : @"NO");
    
    //Call "Append" function and test
    NSString *newString = [self Append:@"Did it work? " toString:@"Yeppers!"];
    //Call displayAlertWithString to pop up UIAlert with newString as text
    [self displayAlertWithString:newString];
    
    //Change int myResult into NSNumber before converting to NSString
    NSNumber *convertNumber = [[NSNumber alloc] initWithInt:myResult];
    //Convert convertNumber to NSString
    NSString *numString = [convertNumber stringValue];
    //Create message to append convertNumber to
    NSString *numberText = [NSString stringWithFormat:@"The number is " ];
    //Append numberText to numString
    NSString *appendNumber = [self Append:numberText toString:numString];
    //NSLog(@"%@", appendNumber);
    //Add appendnumber to displayAlertWithString and display in UIAlert
    [self displayAlertWithString:appendNumber];


    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
