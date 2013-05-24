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
    //Call "Append" function and display
    NSString *newString = [self Append:@"Did it work? " toString:@"Yeppers!"];
    //Call displayAlertWithString to pop up UIAlert with newString as text
    if (newString != nil) {
        [self displayAlertWithString:newString];
    }
    
    //Define variables and Call "Compare" function, display in UIAlert with displayAlertWithString
    NSInteger firstNumber = 5;
    NSInteger secondNumber = 5;
    BOOL myBool = [self Compare:firstNumber toInteger:secondNumber];
    //NSLog(@"Would you like some bacon? %@!", myBool ? @"YES" : @"NO");
    //Convert myBool to an NSString to be displayed in a UIAlertView. %ld to cast NSInteger to long int
    NSString *boolString = [NSString stringWithFormat:@"Is %ld == %ld? %@", (long)firstNumber, (long)secondNumber, myBool ? @"YES" : @"NO"];
    //Use displayAlertWithString to display boolString in UIAlert. If statement to avoid error
    if (firstNumber == secondNumber) {
        [self displayAlertWithString:boolString];
    }
    
    //Call "Add" function to be converted and displayed with displayAlertWithString
    int myResult = [self Add:2 toInteger:7];
    //Change int myResult into NSNumber before converting to NSString. Used numberWithInt for mem auto-release
    NSNumber *convertNumber = [NSNumber numberWithInt:myResult];
    //Convert convertNumber to NSString
    NSString *numString = [convertNumber stringValue];
    //Create message to append convertNumber to
    NSString *numberText = [NSString stringWithFormat:@"The number is " ];
    //Append numberText to numString
    NSString *appendNumber = [self Append:numberText toString:numString];
    //Use displayAlertWithString to display appendNumber in UIAlert
    if (appendNumber != nil) {
        [self displayAlertWithString:appendNumber];
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
