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
    
    //Since starting at FSU, I havent had much time for reading any "real" books that weren't part of a course.
    //The book I chose is a satirical comedy called "The Taming of the Screw" by Adam Berry.
    
    //Set background to custom color. My code starts here.
    self.view.backgroundColor = [UIColor colorWithRed:0.494 green:0.816 blue:0.878 alpha:1]; /*#7ed0e0*/
    
    //UILabel for title of the book
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0,0,400,40)];
    if (bookTitle != nil) {
        bookTitle.backgroundColor = [UIColor darkGrayColor];
        bookTitle.text = @"The Taming of the Screw";
        bookTitle.textAlignment = NSTextAlignmentCenter;
        bookTitle.textColor = [UIColor whiteColor];
        //Add Subview to add label in the view
        [self.view addSubview:bookTitle];
    }
    
    //UILabel for "Author:" label
    UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,40,100,40)];
    if (authorLabel != nil) {
        authorLabel.backgroundColor = [UIColor purpleColor];
        authorLabel.text = @"Author: ";
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.textColor = [UIColor lightGrayColor];
        //Add Subview to add label in the view
        [self.view addSubview:authorLabel];
    }
    
    //UILabel for Author name
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(100,40,150,40)];
    if (authorName != nil) {
        authorName.backgroundColor = [UIColor cyanColor];
        authorName.text = @"Dave Barry";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor brownColor];
        //Add Subview to add label in the view
        [self.view addSubview:authorName];
    }

    //UILabel for "Published:" label
    UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,80,100,40)];
    if (publishedLabel != nil) {
        publishedLabel.backgroundColor = [UIColor magentaColor];
        publishedLabel.text = @"Published: ";
        publishedLabel.textAlignment = NSTextAlignmentRight;
        publishedLabel.textColor = [UIColor yellowColor];
        //Add Subview to add label in the view
        [self.view addSubview:publishedLabel];
    }
    
    //UILabel for Date Published
    UILabel *publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(100,80,150,40)];
    if (publishedDate != nil) {
        publishedDate.backgroundColor = [UIColor blueColor];
        publishedDate.text = @"April 27th, 1983";
        publishedDate.textAlignment = NSTextAlignmentLeft;
        publishedDate.textColor = [UIColor redColor];
        //Add Subview to add label in the view
        [self.view addSubview:publishedDate];
    }
    
    //UILabel for "Summary:"
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,120,100,40)];
    if (summaryLabel != nil) {
        summaryLabel.backgroundColor = [UIColor greenColor];
        summaryLabel.text = @"Summary: ";
        summaryLabel.textAlignment = NSTextAlignmentLeft;
        summaryLabel.textColor = [UIColor grayColor];
        //Add Subview to add label in the view
        [self.view addSubview:summaryLabel];
    }
    
    //UILabel for Book Summary
    UILabel *bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0,160,400,160)];
    if (bookSummary != nil) {
        bookSummary.backgroundColor = [UIColor orangeColor];
        bookSummary.text = @"This book takes a humorous look at different DIY home repairs and the various ways your house and/or  tools will try and maim/kill you. Some of these include insulation, electrical, plumbing, and gardening. If your looking to read about home repair but learn absolutely nothing and have a good laugh, this book is for you.";
        bookSummary.textAlignment = NSTextAlignmentCenter;
        bookSummary.numberOfLines = 7;
        bookSummary.textColor = [UIColor blackColor];
        //Add Subview to add label in the view
        [self.view addSubview:bookSummary];
    }
    
    //UILabel for "List of Items:"
    UILabel *listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,320,120,40)];
    if (listLabel != nil) {
        listLabel.backgroundColor = [UIColor colorWithRed:0.012 green:0.318 blue:0.012 alpha:1]; /*#035103*/
        listLabel.text = @"List of Items: ";
        listLabel.textAlignment = NSTextAlignmentLeft;
        listLabel.textColor = [UIColor colorWithRed:0.643 green:0.988 blue:0.643 alpha:1]; /*#a4fca4*/
        //Add Subview to add label in the view
        [self.view addSubview:listLabel];
    }
    
    
    
    
//Project instructions (delete before submitting!! Also on appDelegate.m)
    //DONE1.Change the background color of the view to any color you wish.
    
    
//Book Information and UILabels
    
    //DONE1.Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.
    
    //DONE2.Create another label that contains the text "Author:" with the text right justified.
    
    //DONE3.Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
    
    //DONE4.Create a UILabel on the next line called "Published:". This text is right justified.
    
    //DONE5.Create a label next to the Published label and add the text of when the book was published. This text is left justified.
    
    //DONE6.Create a UILabel with the text "Summary". This text is left justified.
    
    //DONE7.Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
    
    
//Labels and Arrays
    
    //1.Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
    
    //2.Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
    
    //DONE3.Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
    
    //4.Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    
//Make sure that all code is presented neatly and logically AND refactored as much as possible.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
