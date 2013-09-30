//
//  XAppDelegate.h
//  LedControler
//
//  Created by landyu on 9/30/13.
//  Copyright (c) 2013 landyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
