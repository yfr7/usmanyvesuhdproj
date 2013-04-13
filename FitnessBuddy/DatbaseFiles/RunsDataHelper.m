//
//  RunsDataHelper.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/11/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "RunsDataHelper.h"
#import "Run.h"
#import "Runs.h"


@implementation RunsDataHelper

+ (RunsDataHelper *)helper
{
    static RunsDataHelper *helper = nil;
    if(!helper)
    {
        helper = [[super allocWithZone:nil] init];
    }
    return helper;
    
}

+(id) allocWithZone:(NSZone *)zone
{
    return [self helper];
}

-(id) init
{
    self = [super init];
    if(self) {
        // Read in Homepwner.xcdatamodeld
        model = [NSManagedObjectModel mergedModelFromBundles:nil];
        // NSLog(@"model = %@", model);
        
        NSPersistentStoreCoordinator *psc =
        [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
        
        // Where does the SQLite file go?
        NSString *path = [self itemArchivePath];
        NSURL *storeURL = [NSURL fileURLWithPath:path];
        
        NSError *error = nil;
        
        if (![psc addPersistentStoreWithType:NSSQLiteStoreType
                               configuration:nil
                                         URL:storeURL
                                     options:nil
                                       error:&error]) {
            [NSException raise:@"Open failed"
                        format:@"Reason: %@", [error localizedDescription]];
        }
        
        // Create the managed object context
        context = [[NSManagedObjectContext alloc] init];
        [context setPersistentStoreCoordinator:psc];
        
        // The managed object context can manage undo, but we don't need it
        [context setUndoManager:nil];
    }
    return self;
}

- (NSString *)itemArchivePath
{
    NSArray *documentDirectories =
    NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                        NSUserDomainMask, YES);
    
    // Get one and only document directory from that list
    NSString *documentDirectory = [documentDirectories objectAtIndex:0];
    
    return [documentDirectory stringByAppendingPathComponent:@"store.data"];
}


@end
