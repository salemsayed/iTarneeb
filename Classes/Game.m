//
//  Game.m
//  Tarneeb
//
//  Created by Salem Sayed on 8/12/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#include <stdlib.h>

#import "Game.h"
#import "Deck.h"
#import "Card.h"

@implementation Game

@synthesize deck;
@synthesize player1Name;
@synthesize player2Name;
@synthesize player3Name;
@synthesize player4Name;
@synthesize player1Cards;
@synthesize player2Cards;
@synthesize player3Cards;
@synthesize player4Cards;
@synthesize outOfCall;
@synthesize dakek;

- (id)initWithPlayer1:(NSString *)one Player2:(NSString *)two Player3:(NSString *)three Player4:(NSString *)four {

	//Init. names
	self.player1Name = one;
	self.player2Name = two;
	self.player3Name = three;
	self.player4Name = four;

	//Init. deck
	Deck *temp = [[Deck alloc] initWithCards];
	deck = temp;
	//[temp release];
	
	//Default settings
	self.dakek = 4;
	self.outOfCall = 7;
	
	//Dist. cards between players
	[self distCards:0];

	return self;
	
}//initWithPlayer1

- (void)distCards:(int)x {
	
	if (x == 0) {
		//Init. arrays
		NSMutableArray *tmp1 = [[NSMutableArray alloc] init];
		NSMutableArray *tmp2 = [[NSMutableArray alloc] init];
		NSMutableArray *tmp3 = [[NSMutableArray alloc] init];
		NSMutableArray *tmp4 = [[NSMutableArray alloc] init];
		
		self.player1Cards = tmp1;
		self.player2Cards = tmp2;
		self.player3Cards = tmp3;
		self.player4Cards = tmp4;
		
		[tmp1 release];
		[tmp2 release];
		[tmp3 release];
		[tmp4 release];
		
	}else if (x == 1) {
		Deck *newDeck = [[Deck alloc] initWithCards];
		self.deck = newDeck;
		[newDeck release];
	}
	
	[player1Cards removeAllObjects];
	[player2Cards removeAllObjects];
	[player3Cards removeAllObjects];
	[player4Cards removeAllObjects];
	
	//Temp. variable holding random number
	int r;
	
	//Player 1 cards
	while ([player1Cards count] < 13) {
		r = arc4random() % 52;
		if (r >= [self.deck.cards count]) {
			r = arc4random() % 52;
		}else {
			[player1Cards addObject:[self.deck.cards objectAtIndex:r]];
			[self.deck.cards removeObjectAtIndex:r];
		}
	}
	
	//Player 2 cards
	while ([player2Cards count] < 13) {
		r = arc4random() % 52;
		if (r >= [self.deck.cards count]) {
			r = arc4random() % 52;
		}else {
			[player2Cards addObject:[self.deck.cards objectAtIndex:r]];
			[self.deck.cards removeObjectAtIndex:r];
		}
	}
	
	//Player 3 cards
	while ([player3Cards count] < 13) {
		r = arc4random() % 52;
		if (r >= [self.deck.cards count]) {
			r = arc4random() % 52;
		}else {
			[player3Cards addObject:[self.deck.cards objectAtIndex:r]];
			[self.deck.cards removeObjectAtIndex:r];
		}
	}

	//Player 4 cards
	while ([player4Cards count] < 13) {
		r = arc4random() % 52;
		if (r >= [self.deck.cards count]) {
			r = arc4random() % 52;
		}else {
			[player4Cards addObject:[self.deck.cards objectAtIndex:r]];
			[self.deck.cards removeObjectAtIndex:r];
		}
	}
	
	//TODO: Arrange cards with respect to types and numbers
	
	//Check if one of the players is 'dakek'
	[self checkDakek:player1Cards];
	[self checkDakek:player2Cards];
	[self checkDakek:player3Cards];
	[self checkDakek:player4Cards];
	
	//Check if one of the players is 'out of call'
	[self checkOutOfCall:player1Cards];
	[self checkOutOfCall:player2Cards];
	[self checkOutOfCall:player3Cards];
	[self checkOutOfCall:player4Cards];
	
}//distCards

 /*
 A player is dakek if the sum of points in his/her hands
 is less than the defined number of property 'dakek'
 */
- (void)checkDakek:(NSArray *)toBeChecked {
	
	//Temp. variable to hold number of points in one's hand
	int pointCount = 0;
	
	for (Card *tmp in toBeChecked) {
		switch (tmp.number) {
			case 1:
				pointCount = pointCount + 4;
				break;
			case 11:
				pointCount++;
				break;
			case 12:
				pointCount = pointCount + 2;
				break;
			case 13:
				pointCount = pointCount + 3;
				break;
				
			default:
				break;
		}
	}
	if (pointCount < self.dakek) {
		NSLog(@"dakek happened!");
		[self distCards:1];
	}
	
}//checkDakek

 /*
 A player if out of call if he/she has more than x cards
 of the same type, where x is the property 'outOfCall
 */
- (void)checkOutOfCall:(NSArray *)toBeChecked {
	
	//Temp. variable
	int numberOfSpades = 0;
	int numberOfDiamonds = 0;
	int numberOfHearts = 0;
	int numberOfClubs = 0;
	
	//Temp. variables
	Card *tmp;
	NSString *cardType;
	
	for (tmp in toBeChecked) {
		cardType = [tmp cardType];
		if ([cardType isEqualToString:@"trefl"] ) {
			numberOfClubs++;
		}else if ([cardType isEqualToString:@"karo"]) {
			numberOfDiamonds++;
		}else if ([cardType isEqualToString:@"heart"]) {
			numberOfHearts++;
		}else if ([cardType isEqualToString:@"spade"]) {
			numberOfSpades++;
		}
	}
	
	if (numberOfClubs > self.outOfCall || numberOfDiamonds > self.outOfCall 
		|| numberOfHearts > self.outOfCall || numberOfSpades > self.outOfCall) {
		NSLog(@"out of call happened!");
		[self distCards:1];
	}
	
}//checkOutOfCall

- (void)dealloc {
	[deck release];
	
	[player1Name release];
	[player2Name release];
	[player3Name release];
	[player4Name release];
	
	[player1Cards release];
	[player2Cards release];
	[player3Cards release];
	[player4Cards release];
	
	[super dealloc];
}//dealloc

@end
