//
//  Card.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Card : NSObject {

	//karo, heart, spade, trefl
	NSString *cardType;
	//11 = J, 12 == Q, 13 == K
	NSUInteger number;
}

@property (nonatomic, retain) NSString *cardType;
@property (nonatomic, assign) NSUInteger number;

- (id)initWithType:(NSString *)typeName withNumber:(NSUInteger)numberIn;

@end
