//
//  ViewController.m
//  integracionGAI
//
//  Created by Nicolas Cadena on 7/25/14.
//  Copyright (c) 2014 ProyectosNico. All rights reserved.
//

#import "ViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.screenName = @"HOME";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ChangeToRed
{
    // May return nil if a tracker has not already been initialized with a property
    // ID.
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"IBAction" action:@"ButtonPress" label:@"ChangeToRed" value:nil]build]];
}

@end
