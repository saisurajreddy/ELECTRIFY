//
//  hard.m
//  ganesh
//
//  Created by kmitfs2 on 9/23/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "hard.h"

@implementation hard
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


- (IBAction)mat2x3:(id)sender {
    row=2;
    column=3;
}

- (IBAction)mat3x4:(id)sender {
    row=3;
    column=4;
}

- (IBAction)mat4x3:(id)sender {
    row=4;
    column=3;
}

- (IBAction)mat5x6:(id)sender {
    row=5;
    column=6;
}
@end
