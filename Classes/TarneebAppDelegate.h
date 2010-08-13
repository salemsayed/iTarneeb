//
//  TarneebAppDelegate.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright Tech-Live 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DummyViewController;

@interface TarneebAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	DummyViewController *view;	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DummyViewController *view;

@end

