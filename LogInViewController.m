//
//  LogInViewController.m
//  Tarneeb
//
//  Created by Salem Sayed on 8/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LogInViewController.h"

@implementation LogInViewController


@synthesize connectLabel;
@synthesize loginButton;
@synthesize loginTextField;

- (IBAction)onEditingDidBegin:(id)sender
{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.3];
	CGAffineTransform transform = CGAffineTransformConcat([[self view] transform], CGAffineTransformMakeTranslation(100, 0));
	[[self view] setTransform:transform];
	[UIView commitAnimations];
}

- (IBAction)onEditingDidEnd:(id)sender
{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.3];
	CGAffineTransform transform = CGAffineTransformConcat([[self view] transform], CGAffineTransformMakeTranslation(-100, 0));
	[[self view] setTransform:transform];
	[UIView commitAnimations];
}

- (IBAction)buttonPressed:(id)sender {
	[[[UIApplication sharedApplication] delegate] login:loginTextField.text];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
	return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	
	//This will trigger the login procedure after the user
	//presses 'Done' on the soft keyboard
	[self buttonPressed:nil];

	return YES;
}



/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.loginButton = nil;
	self.loginTextField = nil;
	self.connectLabel = nil;
}


- (void)dealloc {
	[loginButton release];
	[loginTextField release];
	[connectLabel release];
    [super dealloc];
}


@end
