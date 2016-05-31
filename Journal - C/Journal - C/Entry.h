//
//  Entry.h
//  Journal - C
//
//  Created by Karl Pfister on 5/31/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

// Create Properties

@property (copy, nonatomic) NSString *title;

@property (copy, nonatomic) NSString *bodyText;

@property (copy, nonatomic) NSDate *timeStamp;

// Now we have to make it availble to the other classes.

-(instancetype)initWithName: (NSString *)title bodyText:(NSString *)bodyText;

@end


// THe header makes object publlic.