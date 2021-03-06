//
//  DummyViewController.m
//  Tarneeb
//
//  Created by Salem Sayed on 8/12/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#import "DummyViewController.h"
#import "Game.h"
#import "Card.h"

@implementation DummyViewController

@synthesize player1Label;
@synthesize player2Label;
@synthesize player3Label;
@synthesize player4Label;

//Player1 images
@synthesize player11;
@synthesize player12;
@synthesize player13;
@synthesize player14;
@synthesize player15;
@synthesize player16;
@synthesize player17;
@synthesize player18;
@synthesize player19;
@synthesize player110;
@synthesize player111;
@synthesize player112;
@synthesize player113;

//Player2 images
@synthesize player21;
@synthesize player22;
@synthesize player23;
@synthesize player24;
@synthesize player25;
@synthesize player26;
@synthesize player27;
@synthesize player28;
@synthesize player29;
@synthesize player210;
@synthesize player211;
@synthesize player212;
@synthesize player213;

//Player3 images
@synthesize player31;
@synthesize player32;
@synthesize player33;
@synthesize player34;
@synthesize player35;
@synthesize player36;
@synthesize player37;
@synthesize player38;
@synthesize player39;
@synthesize player310;
@synthesize player311;
@synthesize player312;
@synthesize player313;

//Player4 images
@synthesize player41;
@synthesize player42;
@synthesize player43;
@synthesize player44;
@synthesize player45;
@synthesize player46;
@synthesize player47;
@synthesize player48;
@synthesize player49;
@synthesize player410;
@synthesize player411;
@synthesize player412;
@synthesize player413;

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
	Game *newGame = [[Game alloc] initWithPlayer1:@"Salem" Player2:@"Abdel" Player3:@"Gawad" Player4:@"Mahdy"];

	/*
	self.player1Label.text = [newGame player1Name];
	self.player2Label.text = [newGame player2Name];
	self.player3Label.text = [newGame player3Name];
	self.player4Label.text = [newGame player4Name];
	*/
	
	[self drawCards:newGame];

    [super viewDidLoad];
}

- (void)drawCards:(Game *)thisGame {
	
	//Player1 Cards
	for (int i = 0; i < [thisGame.player1Cards count]; i++) {
		
		//TODO:If card of type 'null' then image property should be nil

		//Get filename from attributes
		NSString *fileName = [[NSString alloc] initWithFormat:@"%d-%@",[[thisGame.player1Cards objectAtIndex:i]number], 
							  [[thisGame.player1Cards objectAtIndex:i]cardType]];
			
		//Construct image
		UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"]];
		
		//Get filename from attributes
		NSString *fileNameHigh = [[NSString alloc] initWithFormat:@"%d-%@-high",[[thisGame.player1Cards objectAtIndex:i]number], 
							  [[thisGame.player1Cards objectAtIndex:i]cardType]];

		//Construct image
		UIImage *imgHigh = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileNameHigh ofType:@"png"]];

			
		[fileName release];
		[fileNameHigh release];
		
		//Set image
		switch (i) {
			case 0:
				[player11 setImage:img forState:UIControlStateNormal] ;
				[player11 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 1:
				[player12 setImage:img forState:UIControlStateNormal] ;
				[player12 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 2:
				[player13 setImage:img forState:UIControlStateNormal] ;
				[player13 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 3:
				[player14 setImage:img forState:UIControlStateNormal] ;
				[player14 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 4:
				[player15 setImage:img forState:UIControlStateNormal] ;
				[player15 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 5:
				[player16 setImage:img forState:UIControlStateNormal] ;
				[player16 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 6:
				[player17 setImage:img forState:UIControlStateNormal] ;
				[player17 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 7:
				[player18 setImage:img forState:UIControlStateNormal] ;
				[player18 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 8:
				[player19 setImage:img forState:UIControlStateNormal] ;
				[player19 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 9:
				[player110 setImage:img forState:UIControlStateNormal] ;
				[player110 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 10:
				[player111 setImage:img forState:UIControlStateNormal] ;
				[player111 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 11:
				[player112 setImage:img forState:UIControlStateNormal] ;
				[player112 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 12:
				[player113 setImage:img forState:UIControlStateNormal] ;
				[player113 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
				
			default:
				
				break;
		}		
	}
	
	//Player2 Cards
	for (int i = 0; i < [thisGame.player2Cards count]; i++) {
		
		//TODO:If card of type 'null' then image property should be nil
		
		//Get filename from attributes
		NSString *fileName = [[NSString alloc] initWithFormat:@"%d-%@",[[thisGame.player2Cards objectAtIndex:i]number], 
							  [[thisGame.player2Cards objectAtIndex:i]cardType]];
		
		//Construct image
		UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"]];
		
		//Get filename from attributes
		NSString *fileNameHigh = [[NSString alloc] initWithFormat:@"%d-%@-high",[[thisGame.player1Cards objectAtIndex:i]number], 
								  [[thisGame.player1Cards objectAtIndex:i]cardType]];
		
		//Construct image
		UIImage *imgHigh = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileNameHigh ofType:@"png"]];
		
		
		[fileName release];
		[fileNameHigh release];
		
		//Set image
		switch (i) {
			case 0:
				[player21 setImage:img forState:UIControlStateNormal] ;
				[player21 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 1:
				[player22 setImage:img forState:UIControlStateNormal] ;
				[player22 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 2:
				[player23 setImage:img forState:UIControlStateNormal] ;
				[player23 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 3:
				[player24 setImage:img forState:UIControlStateNormal] ;
				[player24 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 4:
				[player25 setImage:img forState:UIControlStateNormal] ;
				[player25 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 5:
				[player26 setImage:img forState:UIControlStateNormal] ;
				[player26 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 6:
				[player27 setImage:img forState:UIControlStateNormal] ;
				[player27 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 7:
				[player28 setImage:img forState:UIControlStateNormal] ;
				[player28 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 8:
				[player29 setImage:img forState:UIControlStateNormal] ;
				[player29 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 9:
				[player210 setImage:img forState:UIControlStateNormal] ;
				[player210 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 10:
				[player211 setImage:img forState:UIControlStateNormal] ;
				[player211 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 11:
				[player212 setImage:img forState:UIControlStateNormal] ;
				[player212 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 12:
				[player213 setImage:img forState:UIControlStateNormal] ;
				[player213 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
				
			default:
				
				break;
		}		
	}
	
	//Player3 Cards
	for (int i = 0; i < [thisGame.player3Cards count]; i++) {
				
		//TODO:If card of type 'null' then image property should be nil
		
		//Get filename from attributes
		NSString *fileName = [[NSString alloc] initWithFormat:@"%d-%@",[[thisGame.player3Cards objectAtIndex:i]number], 
							  [[thisGame.player3Cards objectAtIndex:i]cardType]];
		
		//Construct image
		UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"]];
		
		//Get filename from attributes
		NSString *fileNameHigh = [[NSString alloc] initWithFormat:@"%d-%@-high",[[thisGame.player1Cards objectAtIndex:i]number], 
								  [[thisGame.player1Cards objectAtIndex:i]cardType]];
		
		//Construct image
		UIImage *imgHigh = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileNameHigh ofType:@"png"]];
		
		
		[fileName release];
		[fileNameHigh release];
		
		//Set image
		switch (i) {
			case 0:
				[player31 setImage:img forState:UIControlStateNormal] ;
				[player31 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 1:
				[player32 setImage:img forState:UIControlStateNormal] ;
				[player32 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 2:
				[player33 setImage:img forState:UIControlStateNormal] ;
				[player33 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 3:
				[player34 setImage:img forState:UIControlStateNormal] ;
				[player34 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 4:
				[player35 setImage:img forState:UIControlStateNormal] ;
				[player35 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 5:
				[player36 setImage:img forState:UIControlStateNormal] ;
				[player36 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 6:
				[player37 setImage:img forState:UIControlStateNormal] ;
				[player37 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 7:
				[player38 setImage:img forState:UIControlStateNormal] ;
				[player38 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 8:
				[player39 setImage:img forState:UIControlStateNormal] ;
				[player39 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 9:
				[player310 setImage:img forState:UIControlStateNormal] ;
				[player310 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 10:
				[player311 setImage:img forState:UIControlStateNormal] ;
				[player311 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 11:
				[player312 setImage:img forState:UIControlStateNormal] ;
				[player312 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 12:
				[player313 setImage:img forState:UIControlStateNormal] ;
				[player313 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
				
			default:
				
				break;
		}			
	}
	
	//Player4 Cards
	for (int i = 0; i < [thisGame.player4Cards count]; i++) {
				
		//TODO:If card of type 'null' then image property should be nil
		
		//Get filename from attributes
		NSString *fileName = [[NSString alloc] initWithFormat:@"%d-%@",[[thisGame.player4Cards objectAtIndex:i]number], 
							  [[thisGame.player4Cards objectAtIndex:i]cardType]];
		
		//Construct image
		UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"]];
		
		//Get filename from attributes
		NSString *fileNameHigh = [[NSString alloc] initWithFormat:@"%d-%@-high",[[thisGame.player1Cards objectAtIndex:i]number], 
								  [[thisGame.player1Cards objectAtIndex:i]cardType]];
		
		//Construct image
		UIImage *imgHigh = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileNameHigh ofType:@"png"]];
		
		
		[fileName release];
		[fileNameHigh release];
		
		//Set image
		switch (i) {
			case 0:
				[player41 setImage:img forState:UIControlStateNormal] ;
				[player41 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 1:
				[player42 setImage:img forState:UIControlStateNormal] ;
				[player42 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 2:
				[player43 setImage:img forState:UIControlStateNormal] ;
				[player43 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 3:
				[player44 setImage:img forState:UIControlStateNormal] ;
				[player44 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 4:
				[player45 setImage:img forState:UIControlStateNormal] ;
				[player45 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 5:
				[player46 setImage:img forState:UIControlStateNormal] ;
				[player46 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 6:
				[player47 setImage:img forState:UIControlStateNormal] ;
				[player47 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 7:
				[player48 setImage:img forState:UIControlStateNormal] ;
				[player48 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 8:
				[player49 setImage:img forState:UIControlStateNormal] ;
				[player49 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 9:
				[player410 setImage:img forState:UIControlStateNormal] ;
				[player410 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 10:
				[player411 setImage:img forState:UIControlStateNormal] ;
				[player411 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 11:
				[player412 setImage:img forState:UIControlStateNormal] ;
				[player412 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
			case 12:
				[player413 setImage:img forState:UIControlStateNormal] ;
				[player413 setImage:imgHigh forState:UIControlStateHighlighted] ;
				break;
				
			default:
				
				break;
		}		
	}
}//drawCards

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
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
	player1Label = nil;
	player2Label = nil;
	player3Label = nil;
	player4Label = nil;
	
	self.player11 = nil;
	self.player12 = nil;
	self.player13 = nil;
	self.player14 = nil;
	self.player15 = nil;
	self.player16 = nil;
	self.player17 = nil;
	self.player18 = nil;
	self.player19 = nil;
	self.player110 = nil;
	self.player111 = nil;
	self.player112 = nil;
	self.player113 = nil;
	
	self.player21 = nil;
	self.player22 = nil;
	self.player23 = nil;
	self.player24 = nil;
	self.player25 = nil;
	self.player26 = nil;
	self.player27 = nil;
	self.player28 = nil;
	self.player29 = nil;
	self.player210 = nil;
	self.player211 = nil;
	self.player212 = nil;
	self.player213 = nil;
	
	self.player31 = nil;
	self.player32 = nil;
	self.player33 = nil;
	self.player34 = nil;
	self.player35 = nil;
	self.player36 = nil;
	self.player37 = nil;
	self.player38 = nil;
	self.player39 = nil;
	self.player310 = nil;
	self.player311 = nil;
	self.player312 = nil;
	self.player313 = nil;
	
	self.player41 = nil;
	self.player42 = nil;
	self.player43 = nil;
	self.player44 = nil;
	self.player45 = nil;
	self.player46 = nil;
	self.player47 = nil;
	self.player48 = nil;
	self.player49 = nil;
	self.player410 = nil;
	self.player411 = nil;
	self.player412 = nil;
	self.player413 = nil;
}


- (void)dealloc {
	[player1Label release];
	[player2Label release];
	[player3Label release];
	[player4Label release];
	
	[player11 release];
	[player12 release];
	[player13 release];
	[player14 release];
	[player15 release];
	[player16 release];
	[player17 release];
	[player18 release];
	[player19 release];
	[player110 release];
	[player111 release];
	[player112 release];
	[player113 release];

	[player21 release];
	[player22 release];
	[player23 release];
	[player24 release];
	[player25 release];
	[player26 release];
	[player27 release];
	[player28 release];
	[player29 release];
	[player210 release];
	[player211 release];
	[player212 release];
	[player213 release];

	[player31 release];
	[player32 release];
	[player33 release];
	[player34 release];
	[player35 release];
	[player36 release];
	[player37 release];
	[player38 release];
	[player39 release];
	[player310 release];
	[player311 release];
	[player312 release];
	[player313 release];

	[player41 release];
	[player42 release];
	[player43 release];
	[player44 release];
	[player45 release];
	[player46 release];
	[player47 release];
	[player48 release];
	[player49 release];
	[player410 release];
	[player411 release];
	[player412 release];
	[player413 release];
	
    [super dealloc];
}


@end
