//
//  Entry.m
//  Journal - C
//
//  Created by Karl Pfister on 5/31/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

#import "Entry.h"

@implementation Entry

//now that we made our init in Playlist.h we need to initialze it here



-(instancetype)initWithName: (NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        self.title = title;
        self.bodyText = bodyText;
        self.timeStamp = [NSDate date];
    }
    return self;
}


@end
