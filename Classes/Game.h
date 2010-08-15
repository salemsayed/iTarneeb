//
//  Game.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/12/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface Game : NSObject {

	Deck *deck;
	
	NSString *player1Name;
	NSString *player2Name;
	NSString *player3Name;
	NSString *player4Name;
	
	NSMutableArray *player1Cards;
	NSMutableArray *player2Cards;
	NSMutableArray *player3Cards;
	NSMutableArray *player4Cards;
	
	int outOfCall;
	int dakek;
	
}

@property (nonatomic, retain) Deck *deck;
@property (nonatomic, retain) NSString *player1Name;
@property (nonatomic, retain) NSString *player2Name;
@property (nonatomic, retain) NSString *player3Name;
@property (nonatomic, retain) NSString *player4Name;
@property (nonatomic, retain) NSMutableArray *player1Cards;
@property (nonatomic, retain) NSMutableArray *player2Cards;
@property (nonatomic, retain) NSMutableArray *player3Cards;
@property (nonatomic, retain) NSMutableArray *player4Cards;
@property int outOfCall;
@property int dakek;

- (id)initWithPlayer1:(NSString *)one Player2:(NSString *)two Player3:(NSString *)three Player4:(NSString *)four;
//x=0 if it's the first deal, if re-deal send x = 1 to make a new deck
- (void)distCards:(int)x;
- (void)checkDakek:(NSArray *)toBeChecked;
- (void)checkOutOfCall:(NSArray *)toBeChecked;
- (void)dealloc;

@end
