//
//  firstViewController.h
//  ganesh
//
//  Created by kmitfs2 on 9/19/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface firstViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *ng;
- (IBAction)newgame:(id)sender;
- (IBAction)instructions:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *ins;
@property (strong, nonatomic) IBOutlet UITextView *rules;
- (IBAction)back:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *bk;
@property (strong, nonatomic) IBOutlet UIButton *easy;
@property (strong, nonatomic) IBOutlet UIButton *hard;
@property (strong, nonatomic) IBOutlet UIButton *bk1;
- (IBAction)back1:(id)sender;
@end
