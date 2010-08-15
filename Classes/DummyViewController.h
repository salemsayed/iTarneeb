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
	UIButton *player11;
	UIButton *player12;
	UIButton *player13;
	UIButton *player14;
	UIButton *player15;
	UIButton *player16;
	UIButton *player17;
	UIButton *player18;
	UIButton *player19;
	UIButton *player110;
	UIButton *player111;
	UIButton *player112;
	UIButton *player113;
	
	//Player2 images
	UIButton *player21;
	UIButton *player22;
	UIButton *player23;
	UIButton *player24;
	UIButton *player25;
	UIButton *player26;
	UIButton *player27;
	UIButton *player28;
	UIButton *player29;
	UIButton *player210;
	UIButton *player211;
	UIButton *player212;
	UIButton *player213;
	
	//Player3 images
	UIButton *player31;
	UIButton *player32;
	UIButton *player33;
	UIButton *player34;
	UIButton *player35;
	UIButton *player36;
	UIButton *player37;
	UIButton *player38;
	UIButton *player39;
	UIButton *player310;
	UIButton *player311;
	UIButton *player312;
	UIButton *player313;
	
	//Player4 images
	UIButton *player41;
	UIButton *player42;
	UIButton *player43;
	UIButton *player44;
	UIButton *player45;
	UIButton *player46;
	UIButton *player47;
	UIButton *player48;
	UIButton *player49;
	UIButton *player410;
	UIButton *player411;
	UIButton *player412;
	UIButton *player413;
	
}

@property (nonatomic, retain) IBOutlet UILabel *player1Label;
@property (nonatomic, retain) IBOutlet UILabel *player2Label;
@property (nonatomic, retain) IBOutlet UILabel *player3Label;
@property (nonatomic, retain) IBOutlet UILabel *player4Label;

@property (nonatomic, retain) IBOutlet UIButton *player11;
@property (nonatomic, retain) IBOutlet UIButton *player12;
@property (nonatomic, retain) IBOutlet UIButton *player13;
@property (nonatomic, retain) IBOutlet UIButton *player14;
@property (nonatomic, retain) IBOutlet UIButton *player15;
@property (nonatomic, retain) IBOutlet UIButton *player16;
@property (nonatomic, retain) IBOutlet UIButton *player17;
@property (nonatomic, retain) IBOutlet UIButton *player18;
@property (nonatomic, retain) IBOutlet UIButton *player19;
@property (nonatomic, retain) IBOutlet UIButton *player110;
@property (nonatomic, retain) IBOutlet UIButton *player111;
@property (nonatomic, retain) IBOutlet UIButton *player112;
@property (nonatomic, retain) IBOutlet UIButton *player113;

@property (nonatomic, retain) IBOutlet UIButton *player21;
@property (nonatomic, retain) IBOutlet UIButton *player22;
@property (nonatomic, retain) IBOutlet UIButton *player23;
@property (nonatomic, retain) IBOutlet UIButton *player24;
@property (nonatomic, retain) IBOutlet UIButton *player25;
@property (nonatomic, retain) IBOutlet UIButton *player26;
@property (nonatomic, retain) IBOutlet UIButton *player27;
@property (nonatomic, retain) IBOutlet UIButton *player28;
@property (nonatomic, retain) IBOutlet UIButton *player29;
@property (nonatomic, retain) IBOutlet UIButton *player210;
@property (nonatomic, retain) IBOutlet UIButton *player211;
@property (nonatomic, retain) IBOutlet UIButton *player212;
@property (nonatomic, retain) IBOutlet UIButton *player213;

@property (nonatomic, retain) IBOutlet UIButton *player31;
@property (nonatomic, retain) IBOutlet UIButton *player32;
@property (nonatomic, retain) IBOutlet UIButton *player33;
@property (nonatomic, retain) IBOutlet UIButton *player34;
@property (nonatomic, retain) IBOutlet UIButton *player35;
@property (nonatomic, retain) IBOutlet UIButton *player36;
@property (nonatomic, retain) IBOutlet UIButton *player37;
@property (nonatomic, retain) IBOutlet UIButton *player38;
@property (nonatomic, retain) IBOutlet UIButton *player39;
@property (nonatomic, retain) IBOutlet UIButton *player310;
@property (nonatomic, retain) IBOutlet UIButton *player311;
@property (nonatomic, retain) IBOutlet UIButton *player312;
@property (nonatomic, retain) IBOutlet UIButton *player313;

@property (nonatomic, retain) IBOutlet UIButton *player41;
@property (nonatomic, retain) IBOutlet UIButton *player42;
@property (nonatomic, retain) IBOutlet UIButton *player43;
@property (nonatomic, retain) IBOutlet UIButton *player44;
@property (nonatomic, retain) IBOutlet UIButton *player45;
@property (nonatomic, retain) IBOutlet UIButton *player46;
@property (nonatomic, retain) IBOutlet UIButton *player47;
@property (nonatomic, retain) IBOutlet UIButton *player48;
@property (nonatomic, retain) IBOutlet UIButton *player49;
@property (nonatomic, retain) IBOutlet UIButton *player410;
@property (nonatomic, retain) IBOutlet UIButton *player411;
@property (nonatomic, retain) IBOutlet UIButton *player412;
@property (nonatomic, retain) IBOutlet UIButton *player413;

- (void)drawCards:(Game *)thisGame;

@end
