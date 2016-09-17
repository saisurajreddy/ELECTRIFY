//
//  easylevelcase.h
//  ganesh
//
//  Created by kmitfs2 on 9/23/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface easylevelcase : UIViewController
{
    int level;
}
@property int count;
- (IBAction)level1:(id)sender;
- (IBAction)level2:(id)sender;
- (IBAction)level3:(id)sender;
- (IBAction)l1:(id)sender;
- (IBAction)l2:(id)sender;
- (IBAction)l3:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *level1;
@property (strong, nonatomic) IBOutlet UIButton *level2;
@property (strong, nonatomic) IBOutlet UIButton *level3;
@property (strong, nonatomic) IBOutlet UIButton *l1;
@property (strong, nonatomic) IBOutlet UIButton *l2;
@property (strong, nonatomic) IBOutlet UIButton *l3;

@end
