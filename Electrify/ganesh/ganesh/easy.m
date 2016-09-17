//
//  easy.m
//  ganesh
//
//  Created by kmitfs2 on 9/22/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "easy.h"
#import "easylevelcase.h"


@implementation easy

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%d",count);
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"link2"]) {
        easylevelcase *controller = (easylevelcase *)segue.destinationViewController;
        controller.count =2;
    }
    if ([segue.identifier isEqualToString:@"link3"]) {
        easylevelcase *controller = (easylevelcase *)segue.destinationViewController;
        controller.count =3;
    }
    if ([segue.identifier isEqualToString:@"link4"]) {
        easylevelcase *controller = (easylevelcase *)segue.destinationViewController;
        controller.count =4;
    }
    if ([segue.identifier isEqualToString:@"link5"]) {
        easylevelcase *controller = (easylevelcase *)segue.destinationViewController;
        controller.count =5;
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)x2:(id)sender {
    count=2;
    
    
}

- (IBAction)x3:(id)sender {
    count=3;
}

- (IBAction)x4:(id)sender {
    count=4;
}

- (IBAction)x5:(id)sender {
    count=5;
}
@end
