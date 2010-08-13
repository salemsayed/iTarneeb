//
//  Deck.m
//  Tarneeb
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@implementation Deck

@synthesize cards;

- (id)initWithCards {
	NSMutableArray *temp = [[NSMutableArray alloc]init];
	self.cards = temp;
	[temp release];

	//11 = J, 12 == Q, 13 == K
	for (int i = 1; i <= 13; i++) {
		Card *card = [[Card alloc] initWithType:@"karo" withNumber:i];
		[self.cards addObject:card];
		[card release];
	}
	for (int i = 1; i <= 13; i++) {
		Card *card = [[Card alloc] initWithType:@"heart" withNumber:i];
		[self.cards addObject:card];
		[card release];
	}
	for (int i = 1; i <= 13; i++) {
		Card *card = [[Card alloc] initWithType:@"trefl" withNumber:i];
		[self.cards addObject:card];
		[card release];
	}
	for (int i = 1; i <= 13; i++) {
		Card *card = [[Card alloc] initWithType:@"spade" withNumber:i];
		[self.cards addObject:card];
		[card release];
	}
	
	return self;
}//initWithCards

- (void)dealloc {
	[cards release];
	[super dealloc];
}//dealloc

@end
