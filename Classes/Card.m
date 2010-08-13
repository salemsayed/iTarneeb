//
//  Card.m
//  Tarneeb
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#import "Card.h"


@implementation Card

@synthesize cardType;
@synthesize number;

- (id)initWithType:(NSString *)typeName withNumber:(NSUInteger)numberIn{
	if (self = [super init]) {
		self.cardType = typeName;
		self.number = numberIn;	
	} 
	
	return self;
}//initWithType


@end
