//
//  Deck.h
//  Tarneeb
//
//  Created by Salem Sayed on 8/10/10.
//  Copyright 2010 Tech-Live. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Deck : NSObject {

	NSMutableArray *cards;
}

@property (nonatomic, retain) NSMutableArray *cards;

- (id)initWithCards;
- (void)dealloc;

@end
