//
//  RoomViewController.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "INFSmartFoxISFSEvents.h"
#import "INFSmartFoxSFSEvent.h"

@interface RoomViewController : UIViewController <INFSmartFoxISFSEvents, UITableViewDataSource, UITableViewDelegate>{
	UITextField *textField;
	UIScrollView *scrollView;
	NSInteger lastY;
	UITableView *users;
	UITableView *rooms;
}

@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UITableView *users;
@property (nonatomic, retain) IBOutlet UITableView *rooms;

@end
