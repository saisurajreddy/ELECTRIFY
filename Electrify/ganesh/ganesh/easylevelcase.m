//
//  easylevelcase.m
//  ganesh
//
//  Created by kmitfs2 on 9/23/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "easylevelcase.h"
#import "evenmat.h"
#import "oddmat.h"



@implementation easylevelcase
@synthesize level1;
@synthesize level2;
@synthesize level3;
@synthesize l1;
@synthesize l2;
@synthesize l3;
@synthesize count;
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
    if(count==2 || count==4)
    {
        self.level1.hidden=YES;
        self.level2.hidden=YES;
        self.level3.hidden=YES;
    
    }
    else
    {
        self.l1.hidden=YES;
        self.l2.hidden=YES;
        self.l3.hidden=YES;
        
    }
        
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"evenlink1"]) {
        evenmat *controller = (evenmat *)segue.destinationViewController;
        controller.level =1;
        controller.count =count;
    }
    if ([segue.identifier isEqualToString:@"evenlink2"]) {
        evenmat *controller = (evenmat *)segue.destinationViewController;
        controller.level =2;
        controller.count =count;
    }
    if ([segue.identifier isEqualToString:@"evenlink3"]) {
        evenmat *controller = (evenmat *)segue.destinationViewController;
        controller.level =3;
        controller.count =count;
    }
    if ([segue.identifier isEqualToString:@"oddlink1"]) {
        oddmat *controller = (oddmat *)segue.destinationViewController;
        controller.level =1;
        controller.count =count;
    }
    if ([segue.identifier isEqualToString:@"oddlink2"]) {
        oddmat *controller = (oddmat *)segue.destinationViewController;
        controller.level =2;
        controller.count =count;
    }
    if ([segue.identifier isEqualToString:@"oddlink3"]) {
        oddmat *controller = (oddmat *)segue.destinationViewController;
        controller.level =3;
        controller.count =count;
    }

    
}



- (void)viewDidUnload
{
    
    [self setLevel1:nil];
    [self setLevel2:nil];
    [self setLevel3:nil];
    [self setL1:nil];
    [self setL2:nil];
    [self setL3:nil];
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


- (IBAction)level1:(id)sender {
    level=1;
}

- (IBAction)level2:(id)sender {
    level=2;
}

- (IBAction)level3:(id)sender {
    level=3;
}

- (IBAction)l1:(id)sender {
    level=1;
}

- (IBAction)l2:(id)sender {
    level=2;
}

- (IBAction)l3:(id)sender {
    level=3;
}

@end
