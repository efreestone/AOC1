//  Elijah Freestone
//  AOC1 1305
//  Project 2
//  May 14th, 2013

//
//  MainViewController.m
//  AOC1Project2
//
//  Created by Elijah Freestone on 5/14/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*Since starting at FSU, I haven't had much time for reading any "real" books that weren't part of a course. The book I chose
    is a satirical comedy called "The Taming of the Screw" by Dave Barry. It is more of a comedic how-to (or how-not-to) than a
    story*/
    
    //Set background to custom color. My code starts here.
    self.view.backgroundColor = [UIColor colorWithRed:0.812 green:0.965 blue:0.976 alpha:1]; /*#cff6f9*/
    //self.view.backgroundColor = [UIColor colorWithRed:0.576 green:0.929 blue:0.976 alpha:1]; /*#93edf9*/
    //self.view.backgroundColor = [UIColor colorWithRed:0.494 green:0.816 blue:0.878 alpha:1]; /*#7ed0e0*/
    //self.view.backgroundColor = [UIColor colorWithRed:0.384 green:0.616 blue:0.647 alpha:1]; /*#629da5*/
    
    //UILabel for title of the book
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0,0,320,35)];
    if (bookTitle != nil) {
        bookTitle.backgroundColor = [UIColor darkGrayColor];
        bookTitle.text = @"The Taming of the Screw";
        bookTitle.textAlignment = NSTextAlignmentCenter;
        bookTitle.textColor = [UIColor magentaColor];
        //Add Subview to add label in the view
        [self.view addSubview:bookTitle];
    }
    
    //UILabel for "Author:" label
    UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,40,120,35)];
    if (authorLabel != nil) {
        authorLabel.backgroundColor = [UIColor purpleColor];
        authorLabel.text = @"Author: ";
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.textColor = [UIColor lightGrayColor];
        //Add Subview to add label in the view
        [self.view addSubview:authorLabel];
    }
    
    //UILabel for Author name
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(120,40,200,35)];
    if (authorName != nil) {
        authorName.backgroundColor = [UIColor brownColor];
        authorName.text = @"Dave Barry";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor cyanColor];
        //Add Subview to add label in the view
        [self.view addSubview:authorName];
    }

    //UILabel for "Published:" label
    UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,80,120,35)];
    if (publishedLabel != nil) {
        publishedLabel.backgroundColor = [UIColor grayColor];
        publishedLabel.text = @"Published: ";
        publishedLabel.textAlignment = NSTextAlignmentRight;
        publishedLabel.textColor = [UIColor greenColor];
        //Add Subview to add label in the view
        [self.view addSubview:publishedLabel];
    }
    
    //UILabel for Date Published
    UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(120,80,200,35)];
    if (publishedDate != nil) {
        publishedDate.backgroundColor = [UIColor blueColor];
        publishedDate.text = @"April 27th, 1983";
        publishedDate.textAlignment = NSTextAlignmentLeft;
        publishedDate.textColor = [UIColor orangeColor];
        //Add Subview to add label in the view
        [self.view addSubview:publishedDate];
    }
    
    //UILabel for "Summary:"
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,120,120,35)];
    if (summaryLabel != nil) {
        summaryLabel.backgroundColor = [UIColor redColor];
        summaryLabel.text = @"Summary: ";
        summaryLabel.textAlignment = NSTextAlignmentLeft;
        summaryLabel.textColor = [UIColor yellowColor];
        //Add Subview to add label in the view
        [self.view addSubview:summaryLabel];
    }
    
    //UILabel for Book Summary
    UILabel *bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0,160,320,200)];
    if (bookSummary != nil) {
        bookSummary.backgroundColor = [UIColor blackColor];
        bookSummary.text = @"This book takes a humorous look at different DIY home repairs and the various ways your house and/or tools will try and maim/kill you. Some of these include insulation, electrical, plumbing, and gardening. If your looking to read about home repair but learn absolutely nothing and have a good laugh while your at it, this book is for you.";
        bookSummary.textAlignment = NSTextAlignmentCenter;
        bookSummary.numberOfLines = 9;
        bookSummary.textColor = [UIColor whiteColor];
        //Add Subview to add label in the view
        [self.view addSubview:bookSummary];
    }
    
    //UILabel for "List of Items:"
    UILabel *listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,365,120,35)];
    if (listLabel != nil) {
        listLabel.backgroundColor = [UIColor colorWithRed:0.008 green:0.6 blue:0.008 alpha:1]; /*#029902*/
        listLabel.text = @"List of Items: ";
        listLabel.textAlignment = NSTextAlignmentLeft;
        listLabel.textColor = [UIColor colorWithRed:0.643 green:0.988 blue:0.643 alpha:1]; /*#a4fca4*/
        //Add Subview to add label in the view
        [self.view addSubview:listLabel];
    }
    
    //Create NSString items to be added to my array
    NSString *listItem1 = @"Viperench";
    NSString *listItem2 = @"Hammerthumbsaurus";
    NSString *listItem3 = @"Mandrill";
    NSString *listItem4 = @"Fanged Screw";
    NSString *listItem5 = @"Tarantulawl";
    
    
    //Create my NSArray with NSString items added to it
    NSArray *myArray = [NSArray arrayWithObjects: listItem1, listItem2, listItem3, listItem4, listItem5, nil];
    
    //Create a mutable string to append myArray to
    NSMutableString *mutableList = [[NSMutableString alloc] initWithCapacity:0];

    //Loop through myArray and print each item
    for (int i=0; i<[myArray count]; i++) {
        [mutableList appendString:[NSString stringWithFormat:@"%@", [myArray objectAtIndex:i]]];
    }
    
    //Insert commas and "and" to mutableList (I'm trying to figure out adding this in my loop, but no luck yet)
    [mutableList insertString:@", " atIndex:9];
    [mutableList insertString:@", " atIndex:28];
    [mutableList insertString:@", " atIndex:38];
    [mutableList insertString:@", and " atIndex:52];
    
    //UILabel to display list of items from mutableList
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0,405,320,60)];
    if (listOfItems != nil) {
        listOfItems.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0.408 alpha:1]; /*#000068*/
        listOfItems.text = mutableList;
        listOfItems.textAlignment = NSTextAlignmentCenter;
        listOfItems.numberOfLines = 2;
        listOfItems.textColor = [UIColor colorWithRed:0.765 green:0.745 blue:0.929 alpha:1]; /*#c3beed*/
        //Add Subview to add label in the view
        [self.view addSubview:listOfItems];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
