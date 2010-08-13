//
//  TarneebAppDelegate.m
//  Tarneeb
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright Tech-Live 2010. All rights reserved.
//

#import "TarneebAppDelegate.h"
#import "DummyViewController.h"

@implementation TarneebAppDelegate

@synthesize view;
@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	[window addSubview:view.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
	[view release];
    [window release];
    [super dealloc];
}


@end
