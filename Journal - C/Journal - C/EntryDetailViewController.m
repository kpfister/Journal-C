//
//  EntryDetailViewController.m
//  Journal - C
//
//  Created by Karl Pfister on 5/31/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController ()

#pragma Outlets
//Title
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;


//Body
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWith:self.entry];
    
    self.titleTextField.delegate = self;
    self.bodyTextView.delegate = self;
    [self.view endEditing:YES];

}

#pragma Actions

- (IBAction)saveButtonTapped:(id)sender
{
    if (self.entry) {
        self.entry.title = self.titleTextField.text;
        self.entry.bodyText = self.bodyTextView.text;
    } else {
        Entry *entry = [[Entry alloc]initWithName:self.titleTextField.text bodyText:self.bodyTextView.text];
        [[EntryController sharedInstance] addEntry:entry];
    }
    [self.navigationController popViewControllerAnimated:true];
}


- (IBAction)clearButtonTapped:(id)sender
{
    self.titleTextField.text = @"";
    self.bodyTextView.text = @"";
}

// Update with View

-(void)updateWith:(Entry *)entry
{
    self.titleTextField.text = entry.title;
    self.bodyTextView.text = entry.bodyText;
}




//Resign First Responder
- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    [textField resignFirstResponder];
    return YES;
}



//- (void)updateWith; Entry
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
