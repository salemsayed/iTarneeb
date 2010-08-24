//
//  LogInViewController.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogInViewController : UIViewController <UITextFieldDelegate> {
	
	UILabel *connectLabel;
	UITextField *loginTextField;
	UIButton *loginButton;
}

@property (nonatomic, retain) IBOutlet UILabel *connectLabel;
@property (nonatomic, retain) IBOutlet UITextField *loginTextField;
@property (nonatomic, retain) IBOutlet UIButton *loginButton;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)onEditingDidBegin:(id)sender;
- (IBAction)onEditingDidEnd:(id)sender;

@end
