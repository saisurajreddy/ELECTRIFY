//
//  evenmat.h
//  ganesh
//
//  Created by kmitfs2 on 9/24/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface evenmat : UIViewController
{
    int r,c,s;
    
    int b[3][3];
    //int n,i;
    //int r1,c1;
    //int arr2[4][4];
    //int arr1[2][2];
    NSString *str;
}
@property int level;
@property int count;
@property (strong, nonatomic) IBOutlet UIButton *but11;
@property (strong, nonatomic) IBOutlet UIButton *but12;
@property (strong, nonatomic) IBOutlet UIButton *but13;
@property (strong, nonatomic) IBOutlet UIButton *but14;
@property (strong, nonatomic) IBOutlet UIButton *but21;
@property (strong, nonatomic) IBOutlet UIButton *but22;
@property (strong, nonatomic) IBOutlet UIButton *but24;
@property (strong, nonatomic) IBOutlet UIButton *but31;
@property (strong, nonatomic) IBOutlet UIButton *but32;
@property (strong, nonatomic) IBOutlet UIButton *but33;
@property (strong, nonatomic) IBOutlet UIButton *but34;
@property (strong, nonatomic) IBOutlet UIButton *but41;
@property (strong, nonatomic) IBOutlet UIButton *but42;
@property (strong, nonatomic) IBOutlet UIButton *but43;
@property (strong, nonatomic) IBOutlet UIButton *but44;
- (IBAction)but11:(id)sender;
- (IBAction)but12:(id)sender;
- (IBAction)but13:(id)sender;
- (IBAction)but14:(id)sender;
- (IBAction)but21:(id)sender;
- (IBAction)but22:(id)sender;
- (IBAction)but23:(id)sender;
- (IBAction)but24:(id)sender;
- (IBAction)but31:(id)sender;
- (IBAction)but32:(id)sender;
- (IBAction)but33:(id)sender;
- (IBAction)but34:(id)sender;
- (IBAction)but41:(id)sender;
- (IBAction)but42:(id)sender;
- (IBAction)but43:(id)sender;
- (IBAction)but44:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *score;
- (IBAction)undoaction:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *undo;
@property (strong, nonatomic) IBOutlet UIImageView *viewer;
@property (strong, nonatomic) IBOutlet UIButton *but23;
-(void)swap;
-(void)check;
-(void)swap:(int)row s:(int)column;

@end
