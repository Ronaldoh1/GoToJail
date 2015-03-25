//
//  ViewController.m
//  GoToJail
//
//  Created by Ronald Hernandez on 3/25/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "RootViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface RootViewController () <CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property CLLocationManager *locationManager;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.locationManager = [CLLocationManager new];
    [self.locationManager requestWhenInUseAuthorization];
    self.locationManager.delegate = self;


    
}

#pragma Mark-CLLocationManager

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
       NSLog(@"%@", locations);
}

- (IBAction)findLocationOnTap:(UIButton *)sender {

    [self.locationManager startUpdatingLocation];
}

- (IBAction)notAllowedLocationOnTap:(UIButton *)sender {
}

@end
