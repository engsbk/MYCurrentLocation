//
//  MYCurrentLocationViewController.m
//  MYCurrentLocation
//
//  Created by Fatma Al-Ali on 5/26/11.
//  Copyright 2011 kuwait university. All rights reserved.
//

#import "MYCurrentLocationViewController.h"

@implementation MYCurrentLocationViewController


@synthesize CLController;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	CLController = [[CoreLocationController alloc] init];
	CLController.delegate = self;
	[CLController.locMgr startUpdatingLocation];
}

- (void)locationUpdate:(CLLocation *)location {
	latitudeLabel.text = [NSString stringWithFormat:@"LATITUDE: %f", location.coordinate.latitude];
	longitudeLabel.text = [NSString stringWithFormat:@"LONGITUDE: %f", location.coordinate.longitude];
}

- (void)locationError:(NSError *)error {
	//speedLabel.text = [error description];
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[CLController release];
    [super dealloc];
}

@end
