//
//  RoomViewController.m
//  Tarneeb
//
//  Created by Salem Sayed on 8/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TarneebAppDelegate.h"
#import "RoomViewController.h"
#import "INFSmartFoxiPhoneClient.h"
#import "INFSmartFoxRoom.h"
#import "INFSmartFoxUser.h"

@implementation RoomViewController

@synthesize scrollView;
@synthesize textField;
@synthesize users;
@synthesize rooms;

#pragma mark -
#pragma mark Controller Specific

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
	return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)inputTextField
{
	[textField resignFirstResponder];
	
	[[[UIApplication sharedApplication] delegate] sendPublicMessage:textField.text];
	
	textField.text = @"";
	
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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	lastY = 0;    
}

#pragma mark -
#pragma mark Protocol Specific

- (void)onJoinRoom:(INFSmartFoxSFSEvent *)evt
{
	[users reloadData];
}

- (void)onUserEnterRoom:(INFSmartFoxSFSEvent *)evt
{
	[users reloadData];
}

- (void)onUserLeaveRoom:(INFSmartFoxSFSEvent *)evt
{
	[users reloadData];
}

- (void)onRoomAdded:(INFSmartFoxSFSEvent *)evt {
	[rooms reloadData];
}

- (void)onRoomDeleted:(INFSmartFoxSFSEvent *)evt { 
	[rooms reloadData];
}

- (void)onPublicMessage:(INFSmartFoxSFSEvent *)evt
{
	UILabel *label = [[[UILabel alloc] initWithFrame:CGRectMake(0, lastY, [scrollView bounds].size.width, 50)] autorelease];
	[label setText:[NSString stringWithFormat:@"%@:", [[evt.params objectForKey:@"sender"] getName]]];
	[label setTextAlignment:UITextAlignmentLeft];
	[label setLineBreakMode:UILineBreakModeWordWrap];
	
	label.backgroundColor = self.view.backgroundColor;
	label.textColor = [UIColor redColor];
	[label sizeToFit];
	[scrollView addSubview:label];
	
	lastY += label.bounds.size.height + 2;
	
	label = [[[UILabel alloc] initWithFrame:CGRectMake(0, lastY, [scrollView bounds].size.width, 50)] autorelease];
	[label setText:[NSString stringWithFormat:@"%@", [evt.params objectForKey:@"message"]]];
	[label setTextAlignment:UITextAlignmentLeft];
	[label setLineBreakMode:UILineBreakModeWordWrap];
	
	label.backgroundColor = self.view.backgroundColor;
	label.numberOfLines = 0;
	[label sizeToFit];
	[scrollView addSubview:label];
	
	lastY += label.bounds.size.height + 2;
	
	scrollView.contentSize = CGSizeMake(scrollView.bounds.size.width, lastY);
	[scrollView scrollRectToVisible:CGRectMake(0, lastY - 1, scrollView.bounds.size.width, 20) animated:YES];
	
	NSLog(@"%@",[evt.params objectForKey:@"message"]);
}

#pragma mark -
#pragma mark tableView delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {	
	if ([tableView tag] == 0) {
		//Users
		return @"Users";
	}else {
		//Rooms
		return @"Rooms";
	}
}

#pragma mark -
#pragma mark tableView datasource

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

	INFSmartFoxiPhoneClient *smartFox = ((TarneebAppDelegate *)[[UIApplication sharedApplication] delegate]).smartFox;
	
	if (smartFox == nil) {
		return 0;
	}
	
	if ([tableView tag] == 0) {
		//Users
		INFSmartFoxRoom *room = [smartFox getActiveRoom];
		
		if (room == nil) {
			return 0;
		}
		
		return [[room getUserList] count];		
	}else {
		//Rooms
		NSInteger gameRoomCount = 0;
		for (id roomId in [smartFox getAllRooms]) {
			if ([[[smartFox getAllRooms] objectForKey:roomId]isGame]) {
				gameRoomCount ++;
			}
		}
		NSLog(@"room count is: %d", gameRoomCount);
		return gameRoomCount;
	}
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
	INFSmartFoxiPhoneClient *smartFox = ((TarneebAppDelegate *)[[UIApplication sharedApplication] delegate]).smartFox;

    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
		cell.textLabel.font = [UIFont systemFontOfSize:13];
    }
	
	if (tableView == users) {
		cell.textLabel.text = [[[[[smartFox getActiveRoom] getUserList] allValues] objectAtIndex:indexPath.row] getName];
	}
	else {
		NSInteger gameRoomCount = 0;
		INFSmartFoxRoom *room;
		for (id roomId in [smartFox getAllRooms]) {
			room = [[smartFox getAllRooms] objectForKey:roomId];
			if ([room isGame]) {
				if (gameRoomCount == indexPath.row) {
					cell.textLabel.text = [NSString stringWithFormat:@"%@ (%ld/%ld)", [room getName], [room getUserCount], [room getMaxUsers]];
					break;
				}
				gameRoomCount++;
			}
		}
	}
	
    return cell;
}

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
	self.textField = nil;
	self.scrollView = nil;
	self.users = nil;
	self.rooms = nil;
}


- (void)dealloc {
	[textField release];
	[scrollView release];
	[users release];
	[rooms release];
    [super dealloc];
}


@end
