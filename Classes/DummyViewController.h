//
//  DummyViewController.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/12/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"

@interface DummyViewController : UIViewController {
	
	UILabel *player1Label;
	UILabel *player2Label;
	UILabel *player3Label;
	UILabel *player4Label;	

	//Player1 images
	UIImageView *player11;
	UIImageView *player12;
	UIImageView *player13;
	UIImageView *player14;
	UIImageView *player15;
	UIImageView *player16;
	UIImageView *player17;
	UIImageView *player18;
	UIImageView *player19;
	UIImageView *player110;
	UIImageView *player111;
	UIImageView *player112;
	UIImageView *player113;
	
	//Player2 images
	UIImageView *player21;
	UIImageView *player22;
	UIImageView *player23;
	UIImageView *player24;
	UIImageView *player25;
	UIImageView *player26;
	UIImageView *player27;
	UIImageView *player28;
	UIImageView *player29;
	UIImageView *player210;
	UIImageView *player211;
	UIImageView *player212;
	UIImageView *player213;
	
	//Player3 images
	UIImageView *player31;
	UIImageView *player32;
	UIImageView *player33;
	UIImageView *player34;
	UIImageView *player35;
	UIImageView *player36;
	UIImageView *player37;
	UIImageView *player38;
	UIImageView *player39;
	UIImageView *player310;
	UIImageView *player311;
	UIImageView *player312;
	UIImageView *player313;
	
	//Player4 images
	UIImageView *player41;
	UIImageView *player42;
	UIImageView *player43;
	UIImageView *player44;
	UIImageView *player45;
	UIImageView *player46;
	UIImageView *player47;
	UIImageView *player48;
	UIImageView *player49;
	UIImageView *player410;
	UIImageView *player411;
	UIImageView *player412;
	UIImageView *player413;
	
}

@property (nonatomic, retain) IBOutlet UILabel *player1Label;
@property (nonatomic, retain) IBOutlet UILabel *player2Label;
@property (nonatomic, retain) IBOutlet UILabel *player3Label;
@property (nonatomic, retain) IBOutlet UILabel *player4Label;

@property (nonatomic, retain) IBOutlet UIImageView *player11;
@property (nonatomic, retain) IBOutlet UIImageView *player12;
@property (nonatomic, retain) IBOutlet UIImageView *player13;
@property (nonatomic, retain) IBOutlet UIImageView *player14;
@property (nonatomic, retain) IBOutlet UIImageView *player15;
@property (nonatomic, retain) IBOutlet UIImageView *player16;
@property (nonatomic, retain) IBOutlet UIImageView *player17;
@property (nonatomic, retain) IBOutlet UIImageView *player18;
@property (nonatomic, retain) IBOutlet UIImageView *player19;
@property (nonatomic, retain) IBOutlet UIImageView *player110;
@property (nonatomic, retain) IBOutlet UIImageView *player111;
@property (nonatomic, retain) IBOutlet UIImageView *player112;
@property (nonatomic, retain) IBOutlet UIImageView *player113;

@property (nonatomic, retain) IBOutlet UIImageView *player21;
@property (nonatomic, retain) IBOutlet UIImageView *player22;
@property (nonatomic, retain) IBOutlet UIImageView *player23;
@property (nonatomic, retain) IBOutlet UIImageView *player24;
@property (nonatomic, retain) IBOutlet UIImageView *player25;
@property (nonatomic, retain) IBOutlet UIImageView *player26;
@property (nonatomic, retain) IBOutlet UIImageView *player27;
@property (nonatomic, retain) IBOutlet UIImageView *player28;
@property (nonatomic, retain) IBOutlet UIImageView *player29;
@property (nonatomic, retain) IBOutlet UIImageView *player210;
@property (nonatomic, retain) IBOutlet UIImageView *player211;
@property (nonatomic, retain) IBOutlet UIImageView *player212;
@property (nonatomic, retain) IBOutlet UIImageView *player213;

@property (nonatomic, retain) IBOutlet UIImageView *player31;
@property (nonatomic, retain) IBOutlet UIImageView *player32;
@property (nonatomic, retain) IBOutlet UIImageView *player33;
@property (nonatomic, retain) IBOutlet UIImageView *player34;
@property (nonatomic, retain) IBOutlet UIImageView *player35;
@property (nonatomic, retain) IBOutlet UIImageView *player36;
@property (nonatomic, retain) IBOutlet UIImageView *player37;
@property (nonatomic, retain) IBOutlet UIImageView *player38;
@property (nonatomic, retain) IBOutlet UIImageView *player39;
@property (nonatomic, retain) IBOutlet UIImageView *player310;
@property (nonatomic, retain) IBOutlet UIImageView *player311;
@property (nonatomic, retain) IBOutlet UIImageView *player312;
@property (nonatomic, retain) IBOutlet UIImageView *player313;

@property (nonatomic, retain) IBOutlet UIImageView *player41;
@property (nonatomic, retain) IBOutlet UIImageView *player42;
@property (nonatomic, retain) IBOutlet UIImageView *player43;
@property (nonatomic, retain) IBOutlet UIImageView *player44;
@property (nonatomic, retain) IBOutlet UIImageView *player45;
@property (nonatomic, retain) IBOutlet UIImageView *player46;
@property (nonatomic, retain) IBOutlet UIImageView *player47;
@property (nonatomic, retain) IBOutlet UIImageView *player48;
@property (nonatomic, retain) IBOutlet UIImageView *player49;
@property (nonatomic, retain) IBOutlet UIImageView *player410;
@property (nonatomic, retain) IBOutlet UIImageView *player411;
@property (nonatomic, retain) IBOutlet UIImageView *player412;
@property (nonatomic, retain) IBOutlet UIImageView *player413;

- (void)drawCards:(Game *)thisGame;

@end
