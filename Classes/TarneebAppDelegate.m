//
//  TarneebAppDelegate.m
//  Tarneeb
//  
//  The delegate will handle the transition between views, and will act as a central for
//  communication between different views
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright Tech-Live 2010. All rights reserved.
//

#import "TarneebAppDelegate.h"
#import "LogInViewController.h"
#import "RoomViewController.h"
#import "INFSmartFoxiPhoneClient.h"
#import "INFSmartFoxObjectSerializer.h"

@implementation TarneebAppDelegate

@synthesize viewController;
@synthesize oldViewController;
@synthesize smartFox;
@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	[application setStatusBarHidden:YES];
	
	UIViewController *aViewController = [[LogInViewController alloc] initWithNibName:@"LogInViewController" bundle:[NSBundle mainBundle]];
	self.viewController = aViewController;
	[aViewController release];
	
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	//Smartfox init.
	[INFSmartFoxObjectSerializer setDebug:YES];	
	smartFox = [[INFSmartFoxiPhoneClient iPhoneClient:YES delegate:self] retain];
	
	//config is the name of the XML config file
	[smartFox loadConfig:@"config" autoConnect:YES];
	
	return YES;
}


#pragma mark -
#pragma mark INFSmartFoxiPhoneClient delegate
- (void)onDebugMessage:(INFSmartFoxSFSEvent *)evt {
	
}

- (void)onConnection:(INFSmartFoxSFSEvent *)evt {
	//Enable the login button and the textfield
	if ([[evt.params objectForKey:@"success"] boolValue]) {
		((LogInViewController *)viewController).connectLabel.text = @"Connected, please login";
		((LogInViewController *)viewController).loginButton.enabled = YES;
		((LogInViewController *)viewController).loginTextField.enabled = YES;
	}
	else {				
		((LogInViewController *)viewController).connectLabel.text = [NSString stringWithFormat:@"Connection error: %@", [evt.params objectForKey:@"error"]];
	}
}

- (void)onRoomListUpdate:(INFSmartFoxSFSEvent *)evt {
	//Will autojoin the default room in the zone, if there is!
	[smartFox autoJoin];
}


- (void)onConnectionLost:(INFSmartFoxSFSEvent *)evt
{
	NSLog(@"onConnectionLost");
	
	//If in lobby, switch view to intro. view
	if ([viewController isKindOfClass:[RoomViewController class]]) {
		UIViewController *aViewController = [LogInViewController alloc];

		//switchToView handle the release of the controller
		[self switchToView:@"LogInViewController" uiViewController:aViewController];
	}
    //Disable textfield and button until connected!
	else {
		((LogInViewController *)viewController).loginTextField.enabled = NO;
		((LogInViewController *)viewController).loginButton.enabled = NO;
	}
	
    //Retry connection
	[smartFox loadConfig:@"config" autoConnect:YES];
}

- (void)onJoinRoom:(INFSmartFoxSFSEvent *)evt
{
	//If joined a room, switch to the room controller/view
	UIViewController *aViewController = [RoomViewController alloc];
	
	//switchToView handle the release of the controller
	[self switchToView:@"RoomViewController" uiViewController:aViewController];

	/*Not needed for now
	if ([viewController respondsToSelector:@selector(onJoinRoom:)]) {
		[viewController onJoinRoom:evt];
	}
	*/
}

- (void)animationFinished:(NSString *)animationID finished:(BOOL)finished context:(void *)context
{
	[[self.oldViewController view] removeFromSuperview];	
	
	self.oldViewController = nil;	
}

//If another user enters the same room as mine
- (void)onUserEnterRoom:(INFSmartFoxSFSEvent *)evt
{
	if ([viewController respondsToSelector:@selector(onUserEnterRoom:)]) {
		[viewController onUserEnterRoom:evt];
	}
}

//If another user leaves the same room as mine
- (void)onUserLeaveRoom:(INFSmartFoxSFSEvent *)evt
{
	if ([viewController respondsToSelector:@selector(onUserLeaveRoom:)]) {
		[viewController onUserLeaveRoom:evt];
	}
}


- (void)sendPublicMessage:(NSString *)message {
	[smartFox sendPublicMessage:message roomId:-1];
}

/* No use!
- (void)applicationWillTerminate:(UIApplication *)application {
	[smartFox release];
    
    [viewController release];
    [window release];
}
*/

#pragma mark -
#pragma mark Delegate Specific

-(void)login:(NSString *)loginName {
	[smartFox login:@"iTarneeb" name:loginName pass:@""];
}

- (void)onPublicMessage:(INFSmartFoxSFSEvent *)evt
{
	if ([viewController respondsToSelector:@selector(onPublicMessage:)]) {
		[viewController onPublicMessage:evt];
	}
}

- (void)switchToView:(NSString *)nibName uiViewController:(UIViewController *)uiViewController {
	NSLog(@"%@",[NSString stringWithFormat:@"switchToView %@", nibName]);
	self.oldViewController = self.viewController;
	UIViewController *aViewController = [uiViewController initWithNibName:nibName bundle:[NSBundle mainBundle]];
	self.viewController = aViewController;
	[aViewController release];
	
	[self.viewController view].center = window.center;
	
	CGAffineTransform transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(M_PI / 2), CGAffineTransformMakeTranslation(0, 480));
	[[self.viewController view] setTransform:transform];		
	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.5];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:NSSelectorFromString(@"animationFinished:finished:context:")];
	CGAffineTransform transform2 = CGAffineTransformConcat([[viewController view] transform], CGAffineTransformMakeTranslation(0, -480));
	[[self.viewController view] setTransform:transform2];
	CGAffineTransform transform3 = CGAffineTransformConcat([[oldViewController view] transform], CGAffineTransformMakeTranslation(0, -480));
	[[self.oldViewController view] setTransform:transform3];
	[window addSubview:[self.viewController view]];
	
	[UIView commitAnimations];
}


#pragma mark -
#pragma mark Memory MGMT
- (void)dealloc {
	[oldViewController release];
	[viewController release];
    [window release];
    [super dealloc];
}


@end
