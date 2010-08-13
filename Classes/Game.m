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
	
	//Default settings
	self.dakek = 4;
	self.outOfCall = 7;
	
	//Dist. cards between players
	[self distCards];

	return self;
}//initWithPlayer1

- (void)distCards {

	//Init. arrays
	NSMutableArray *tmp1 = [[NSMutableArray alloc] init];
	NSMutableArray *tmp2 = [[NSMutableArray alloc] init];
	NSMutableArray *tmp3 = [[NSMutableArray alloc] init];
	NSMutableArray *tmp4 = [[NSMutableArray alloc] init];
	self.player1Cards = tmp1;
	self.player2Cards = tmp2;
	self.player3Cards = tmp3;
	self.player4Cards = tmp4;
	
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
	//TODO: Infinite loop be sabab size of deck
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
	
	[self checkDakek];
	[self checkOutOfCall];
	
}//distCards

- (void)checkDakek {
}

- (void)checkOutOfCall {
}

- (void)dealloc {
	[deck release];
	[player1Cards release];
	[player2Cards release];
	[player3Cards release];
	[player4Cards release];
	[super dealloc];
}//dealloc

@end
