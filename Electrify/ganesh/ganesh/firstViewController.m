//
//  firstViewController.m
//  ganesh
//
//  Created by kmitfs2 on 9/19/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "firstViewController.h"

@implementation firstViewController
@synthesize bk;
@synthesize easy;
@synthesize hard;
@synthesize bk1;
@synthesize ins;
@synthesize rules;
@synthesize ng;

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
    self.rules.hidden=YES;
    self.bk.hidden=YES;
    self.easy.hidden=YES;
    self.hard.hidden=YES;
    self.bk1.hidden=YES;

}

- (void)viewDidUnload
{
    [self setNg:nil];
    [self setIns:nil];
    [self setRules:nil];
    [self setBk:nil];
    [self setEasy:nil];
    [self setHard:nil];
    [self setBk1:nil];
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

- (IBAction)newgame:(id)sender {
    self.ng.hidden=YES;
    self.ins.hidden=YES;
    self.easy.hidden=NO;
    self.hard.hidden=NO;
    self.bk1.hidden=NO;
    
}

- (IBAction)instructions:(id)sender {
    self.ng.hidden=YES;
    self.ins.hidden=YES;
    self.rules.hidden=NO;
    self.bk.hidden=NO;

    
}
- (IBAction)back:(id)sender {
    self.rules.hidden=YES;
    self.bk.hidden=YES;
    self.ng.hidden=NO;
    self.ins.hidden=NO;
    
    
}
- (IBAction)back1:(id)sender {
    self.easy.hidden=YES;
    self.hard.hidden=YES;
    self.bk1.hidden=YES;
    self.ng.hidden=NO;
    self.ins.hidden=NO;
}
@end
