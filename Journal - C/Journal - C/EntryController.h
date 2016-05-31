//
//  EntryController.h
//  Journal - C
//
//  Created by Karl Pfister on 5/31/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic) NSMutableArray *entries; //Add an entries NSArray property

- (void)addEntry:(Entry *)entry; // Method Signitures

- (void)removeEntry:(Entry *)entry;


+(EntryController *)sharedInstance; // Declairing that there will be a shared instance
-(instancetype)init;


@end
