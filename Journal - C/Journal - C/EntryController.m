//
//  EntryController.m
//  Journal - C
//
//  Created by Karl Pfister on 5/31/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.entries = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

- (void)addEntry:(Entry *)entry;
{
    
    [self.entries addObject:entry];
    
}

- (void)removeEntry:(Entry *)entry;
{
    [self.entries removeObject:entry];
}
/*
 -(void)createPlaylistWithTitle:(NSString *)title
 {
 Playlist *playlist = [[Playlist alloc] initWithName:title songs:[[NSMutableArray alloc] init]];
 [self.playlists addObject:playlist];
 
 }
 
 -(void)deletePlaylist:(Playlist *)playlist
 {
 [self.playlists removeObject:playlist];
 
 }



*/
@end
