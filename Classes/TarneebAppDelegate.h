//
//  TarneebAppDelegate.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright Tech-Live 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "INFSmartFoxISFSEvents.h"
#import "INFSmartFoxSFSEvent.h"

@class INFSmartFoxiPhoneClient;

@interface TarneebAppDelegate : NSObject <INFSmartFoxISFSEvents,UIApplicationDelegate> {
	INFSmartFoxiPhoneClient *smartFox;	
	
    UIWindow *window;
    UIViewController *oldViewController;
    UIViewController *viewController;	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet INFSmartFoxiPhoneClient *smartFox;
@property (nonatomic, retain) IBOutlet UIViewController *oldViewController;
@property (nonatomic, retain) IBOutlet UIViewController *viewController;

- (void)login:(NSString *)loginName;
- (void)sendPublicMessage:(NSString *)message;
- (void)switchToView:(NSString *)nibName uiViewController:(UIViewController *)uiViewController;

@end

