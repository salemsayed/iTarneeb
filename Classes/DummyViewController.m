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
	NSLog(@"count 1 is: %d",[newGame.player1Cards count]);
	NSLog(@"count 2 is: %d",[newGame.player2Cards count]);
	NSLog(@"count 3 is: %d",[newGame.player3Cards count]);
	NSLog(@"count 4 is: %d",[newGame.player4Cards count]);
	NSLog(@"count of deck is: %d", [newGame.deck.cards count]);
	
	for (int i = 0; i < [newGame.player1Cards count]; i++) {
		
		//NSLog(@"Player 1 card number is %d and of type %@", [[newGame.player1Cards objectAtIndex:i] number], 
			  //[[newGame.player1Cards objectAtIndex:i] cardType]);
		
		//Get filename from attributes
		NSString *fileName = [[NSString alloc] initWithFormat:@"%d-%@",[[newGame.player1Cards objectAtIndex:i]number], 
							  [[newGame.player1Cards objectAtIndex:i]cardType]];
		
		//Construct image
		UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"]];
		
		
		[fileName release];
		
		//Set image
		switch (i) {
			case 0:
				player11.image = img;
				break;
			case 1:
				player12.image = img;
				break;
			case 2:
				player13.image = img;
				break;
			case 3:
				player14.image = img;
				break;
			case 4:
				player15.image = img;
				break;
			case 5:
				player16.image = img;
				break;
			case 6:
				player17.image = img;
				break;
			case 7:
				player18.image = img;
				break;
			case 8:
				player19.image = img;
				break;
			case 9:
				player110.image = img;
				break;
			case 10:
				player111.image = img;
				break;
			case 11:
				player112.image = img;
				break;
			case 12:
				player113.image = img;
				break;
				
			default:
				
				break;
		}
		
	}
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
}


- (void)dealloc {
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
	
    [super dealloc];
}


@end
