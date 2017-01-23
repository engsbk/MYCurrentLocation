//
//  MYCurrentLocationAppDelegate.h
//  MYCurrentLocation
//
//  Created by Fatma Al-Ali on 5/26/11.
//  Copyright 2011 kuwait university. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MYCurrentLocationViewController;

@interface MYCurrentLocationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MYCurrentLocationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MYCurrentLocationViewController *viewController;

@end

