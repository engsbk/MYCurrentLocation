//
//  MYCurrentLocationViewController.h
//  MYCurrentLocation
//
//  Created by Fatma Al-Ali on 5/26/11.
//  Copyright 2011 kuwait university. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocationController.h"


@interface MYCurrentLocationViewController : UIViewController {

	CoreLocationController *CLController;
	IBOutlet UILabel *latitudeLabel;
	IBOutlet UILabel *longitudeLabel;
}

@property (nonatomic, retain) CoreLocationController *CLController;

@end


