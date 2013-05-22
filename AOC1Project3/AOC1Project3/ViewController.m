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

//"Add" function takes two integers, adds them and returns the result. Called w/ myResult
-(int)Add:(NSInteger)numberOne toInteger:(NSInteger)numberTwo {
    return (numberOne + numberTwo);
}

//"Compare" function compares 2 NSIntegers and returns YES or NO based on if they are equal. Called w/ myBool
-(BOOL)Compare:(NSInteger)boolOne toInteger:(NSInteger)boolTwo {
    if (boolOne == boolTwo){
        return YES;
    }
    else {
        return NO;
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
    //3. Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
    //4. Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    //5. Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
    //6. Call the Add function passing in two integer values. Capture the return of this function into a variable.
    //7. Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    //8. Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    //9. Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    //DisplayAlertWithString Function
    //1. Take the passed in NSString and display it in the alert view
    //2. Create an UIAlertView
    
    /* Due: Thu, 23 May */
    //End of instructions - DELETE FROM FINAL!!
    

    
        /*int returnValue = [self printDebugInfo:@"this is bacon on a stick" numLines:5];
    
        float widthValue = [self getWidthFromCGRect:CGRectMake(0, 0, 354.0f, 200.0f)];*/
    
        //[self Add:@"%i %i", number1, number2];
    
    //Call "Add" function and test
    int myResult = [self Add:2 toInteger:7];
    NSLog(@"%d out of 10 people love bacon.", myResult);
    
    //Call "Compare" function and test
    BOOL myBool = [self Compare:5 toInteger:5];
    NSLog(@"Would you like some bacon? %@!", myBool ? @"YES" : @"NO");

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(float)getWidthFromCGRect:(CGRect)rect {
    return rect.size.width;
}

-(int)printDebugInfo:(NSString*)debugString numLines:(NSInteger)numLines
{
    NSLog(@"%@", debugString);
    
    return 4;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
