//
//  oddmat.h
//  ganesh
//
//  Created by kmitfs2 on 9/24/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface oddmat : UIViewController
{
    NSString *str;
    int b[3][3];
    int a[5][5];
    int r,c,s;
}
@property int level;
@property int count;

@property (strong, nonatomic) IBOutlet UIButton *but11;
@property (strong, nonatomic) IBOutlet UIButton *but12;
@property (strong, nonatomic) IBOutlet UIButton *but13;
@property (strong, nonatomic) IBOutlet UIButton *but15;
@property (strong, nonatomic) IBOutlet UIButton *but21;
@property (strong, nonatomic) IBOutlet UIButton *but22;
@property (strong, nonatomic) IBOutlet UIButton *but23;
@property (strong, nonatomic) IBOutlet UIButton *but24;
@property (strong, nonatomic) IBOutlet UIButton *but25;
@property (strong, nonatomic) IBOutlet UIButton *but31;
@property (strong, nonatomic) IBOutlet UIButton *but32;
@property (strong, nonatomic) IBOutlet UIButton *but33;
@property (strong, nonatomic) IBOutlet UIButton *but34;
@property (strong, nonatomic) IBOutlet UIButton *but35;
@property (strong, nonatomic) IBOutlet UIButton *but41;
@property (strong, nonatomic) IBOutlet UIButton *but42;
@property (strong, nonatomic) IBOutlet UIButton *but43;
@property (strong, nonatomic) IBOutlet UIButton *but44;
@property (strong, nonatomic) IBOutlet UIButton *but45;
@property (strong, nonatomic) IBOutlet UIButton *but51;
@property (strong, nonatomic) IBOutlet UIButton *but52;
@property (strong, nonatomic) IBOutlet UIButton *but53;
@property (strong, nonatomic) IBOutlet UIButton *but54;
@property (strong, nonatomic) IBOutlet UIButton *but55;
@property (strong, nonatomic) IBOutlet UILabel *score;
- (IBAction)but11:(id)sender;
- (IBAction)but12:(id)sender;
- (IBAction)but13:(id)sender;
- (IBAction)but14:(id)sender;
- (IBAction)but15:(id)sender;
- (IBAction)but21:(id)sender;
- (IBAction)but22:(id)sender;
- (IBAction)but23:(id)sender;
- (IBAction)but24:(id)sender;
- (IBAction)but25:(id)sender;
- (IBAction)but31:(id)sender;
- (IBAction)but32:(id)sender;
- (IBAction)but33:(id)sender;
- (IBAction)but34:(id)sender;
- (IBAction)but35:(id)sender;
- (IBAction)but41:(id)sender;
- (IBAction)but42:(id)sender;
- (IBAction)but43:(id)sender;
- (IBAction)but44:(id)sender;
- (IBAction)but45:(id)sender;
- (IBAction)but51:(id)sender;
- (IBAction)but52:(id)sender;
- (IBAction)but53:(id)sender;
- (IBAction)but54:(id)sender;
- (IBAction)but55:(id)sender;
- (IBAction)undoaction:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *undo;
@property (strong, nonatomic) IBOutlet UIImageView *viewer;
@property (strong, nonatomic) IBOutlet UIButton *but14;
-(void)swap;
-(void)check;
-(void)swap:(int)row s:(int)column;

@end
