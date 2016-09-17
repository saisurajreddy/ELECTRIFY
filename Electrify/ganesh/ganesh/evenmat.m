//
//  evenmat.m
//  ganesh
//
//  Created by kmitfs2 on 9/24/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "evenmat.h"
#include<stdio.h>
#include<stdlib.h>



@implementation evenmat
@synthesize but11;
@synthesize but12;
@synthesize but13;
@synthesize but14;
@synthesize but21;
@synthesize but22;
@synthesize but24;
@synthesize but31;
@synthesize but32;
@synthesize but33;
@synthesize but34;
@synthesize but41;
@synthesize but42;
@synthesize but43;
@synthesize but44;
@synthesize score;
@synthesize undo;
@synthesize viewer;
@synthesize but23;
@synthesize level;
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
    int i1,j1,k1;
    int n,i=0,r1,c1;
    int arr[4][4]={0};
    int arr1[2][2]={0};
    NSLog(@"%d,%d",level,count);
    self.undo.hidden=YES;
    self.viewer.hidden=YES;

    
    self.but11.hidden=YES;
    self.but12.hidden=YES;
    self.but13.hidden=YES;
    self.but14.hidden=YES;
    self.but21.hidden=YES;
    self.but22.hidden=YES;
    self.but23.hidden=YES;
    self.but24.hidden=YES;
    self.but31.hidden=YES;
    self.but32.hidden=YES;
    self.but33.hidden=YES;
    self.but34.hidden=YES;
    self.but41.hidden=YES;
    self.but42.hidden=YES;
    self.but43.hidden=YES;
    self.but44.hidden=YES;
    self.score.text=@"0";
    
    if(count==2)
    {
        self.but22.hidden=NO;
        self.but23.hidden=NO;
        self.but32.hidden=NO;
        self.but33.hidden=NO;
        n= arc4random_uniform(4);
        while(i<n)
        {
            int r1= arc4random_uniform(2);
            int c1= arc4random_uniform(2);
            if(arr1[r1][c1]!=1)
            {
                arr1[r1][c1]=1;
                i++;
            }
        }
        for(r1=0;r1<2;r1++)
        {
            for(c1=0;c1<2;c1++)
            {
                printf("%d\t",arr1[r1][c1]);
            }
            printf("\n");
        }
        for(i1=0;i1<3;i1++)
        {
            for(j1=0;j1<3;j1++)
            {
                b[i1][j1]=1;
            }
        }
        for(i1=0;i1<2;i1++)
        {
            for(j1=0;j1<2;j1++)
            {
                if(arr1[i1][j1]==0)
                {
                    [self swap:i1 s:j1];
                    for(k1=0;k1<2;k1++)
                    {
                        if(j1==k1)
                            continue;
                        [self swap:i1 s:k1];
                    }
                    for(k1=0;k1<2;k1++)
                    {
                        if(i1==k1)
                            continue;
                        [self swap:k1 s:j1];
                    }
                }
            }
        }
        printf("-----------\n");
        for(i1=0;i1<3;i1++)
        {
            for(j1=0;j1<3;j1++)
            {
                printf("  %d",b[i1][j1]);
            }
            printf("\n");
        }
        if(arr1[0][0]==1)
        {
            [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }
        if(arr1[0][1]==1)
        {
            [but23 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }
        if(arr1[1][0]==1)
        {
            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }
        if(arr1[1][1]==1)
        {
            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }
        /*if(level==1)
        {
            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }
        if(level==2)
        {
           [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }*/
        
    }
    else
    {
        self.but11.hidden=NO;
        self.but12.hidden=NO;
        self.but13.hidden=NO;
        self.but14.hidden=NO;
        self.but21.hidden=NO;
        self.but22.hidden=NO;
        self.but23.hidden=NO;
        self.but24.hidden=NO;
        self.but31.hidden=NO;
        self.but32.hidden=NO;
        self.but33.hidden=NO;
        self.but34.hidden=NO;
        self.but41.hidden=NO;
        self.but42.hidden=NO;
        self.but43.hidden=NO;
        self.but44.hidden=NO;

        n= arc4random_uniform(16);
        while(i<n)
        {
            int r1= arc4random_uniform(4);
            int c1= arc4random_uniform(4);
            if(arr[r1][c1]!=1)
            {
                arr[r1][c1]=1;
                i++;
            }
        }
        for(r1=0;r1<4;r1++)
        {
            for(c1=0;c1<4;c1++)
            {
                printf("%d\t",arr[r1][c1]);
            }
            printf("\n");
        }
        if(arr[0][0]==1)
        {
            [but11 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[0][1]==1)
        {
            [but12 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[0][2]==1)
        {
            [but13 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[0][3]==1)
        {
            [but14 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[1][0]==1)
        {
            [but21 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[1][1]==1)
        {
            [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[1][2]==1)
        {
            [but23 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[1][3]==1)
        {
            [but24 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[2][0]==1)
        {
            [but31 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[2][1]==1)
        {
            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[2][2]==1)
        {
            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[2][3]==1)
        {
            [but34 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[3][0]==1)
        {
            [but41 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[3][1]==1)
        {
            [but42 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[3][2]==1)
        {
            [but43 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        if(arr[3][3]==1)
        {
            [but44 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];            
        }
        /*if(level==2)
        {
            [but12 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but14 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but23 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but31 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but42 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but44 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }
        if(level==1)
        {
            [but11 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
            [but44 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
        }*/
       
        

        
    }

}

- (void)viewDidUnload
{
    [self setBut11:nil];
    [self setBut12:nil];
    [self setBut13:nil];
    [self setBut14:nil];
    [self setBut21:nil];
    [self setBut22:nil];
    [self setBut23:nil];
    [self setBut24:nil];
    [self setBut31:nil];
    [self setBut32:nil];
    [self setBut33:nil];
    [self setBut34:nil];
    [self setBut41:nil];
    [self setBut42:nil];
    [self setBut43:nil];
    [self setBut44:nil];
    [self setScore:nil];
    [self setViewer:nil];
    [self setUndo:nil];
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


- (IBAction)but11:(id)sender {
    r=1;
    c=1;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but12:(id)sender {
    r=1;
    c=2;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but13:(id)sender {
    r=1;
    c=3;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but14:(id)sender {
    r=1;
    c=4;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but21:(id)sender {
    r=2;
    c=1;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but22:(id)sender {
    r=2;
    c=2;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but23:(id)sender {
    r=2;
    c=3;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but24:(id)sender {
    r=2;
    c=4;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but31:(id)sender {
    r=3;
    c=1;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but32:(id)sender {
    r=3;
    c=2;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but33:(id)sender {
    r=3;
    c=3;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but34:(id)sender {
    r=3;
    c=4;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but41:(id)sender {
    r=4;
    c=1;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but42:(id)sender {
    r=4;
    c=2;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but43:(id)sender {
    r=4;
    c=3;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    [self swap];
    [self check];
}

- (IBAction)but44:(id)sender {
    r=4;
    c=4;
    s++;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=NO;

    
    [self swap];
    [self check];
}
-(void)swap
{
    if(count==2)
    {
        int i=1;
        for (i=2;i<=3;i++)
        {
            switch (i)
            {
                case 1:switch (r)
                {
                    case 1:printf("11\t");
                        if ([but11.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but11 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but11 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("21\t");
                        if ([but21.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but21 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but21 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("31\t");
                        if ([but31.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but31 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but31 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 4:printf("41\t");
                        if ([but41.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but41 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but41 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
                        
                        
                    default:
                        printf(" wrong choice");
                }
                    printf("\n");
                    break;
                case 2:switch (r)
                {
                    case 1:printf("12\t");
                        if ([but12.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but12 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but12 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("22\t");
                        if ([but22.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but22 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("32\t");
                        if ([but32.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but32 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
                    case 4:printf("42\t");
                        if ([but42.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but42 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but42 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
                        
                    default:
                        printf(" wrong choice");
                }
                    printf("\n");
                    break;
                case 3:switch (r)
                {
                    case 1:printf("13\t");
                        if ([but13.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but13 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but13 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("23\t");
                        if ([but23.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but23 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but23 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("33\t");
                        if ([but33.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but33 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 4:printf("43\t");
                        if ([but43.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but43 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but43 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
                    default:
                        printf(" wrong choice");
                }
                    break;
                case 4:switch (r)
                {
                    case 1:printf("14\t");
                        if ([but14.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but14 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but14 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("24\t");
                        if ([but24.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but24 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but24 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("34\t");
                        if ([but34.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but34 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but34 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 4:printf("44\t");
                        if ([but44.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but44 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but44 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
                    default:
                        printf(" wrong choice");
                }
                    break;
                default:
                    printf(" wrong choice");
                    
            }
        }
        printf("\n");
        printf("\n");
        for (i=2;i<=3;i++)
        {
            if (i==r)
            {
                continue;
            }
            switch (i)
            {
                case 1:switch (c)
				{
					case 1:printf("11\t");
                        if ([but11.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but11 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but11 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 2:printf("12\t");
                        if ([but12.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but12 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but12 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("13\t");
                        if ([but13.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but13 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but13 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("14\t");
                        if ([but14.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but14 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but14 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
					default:
						printf(" wrong choice");
				}
                    
                    printf("\n");
                    break;
                case 2:switch (c)
				{
					case 1:printf("21\t");
                        
                        if ([but21.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but21 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but21 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }break;
					case 2:printf("22\t");
                        if ([but22.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but22 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("23\t");
                        if ([but23.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but23 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but23 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("24\t");
                        if ([but24.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but24 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but24 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
					default:
						printf(" wrong choice");
				}
                    printf("\n");
                    break;
                case 3:switch (c)
				{
					case 1:printf("31\t");
                        if ([but31.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but31 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but31 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 2:printf("32\t");
                        if ([but32.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but32 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("33\t");
                        if ([but33.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but33 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("34\t");
                        if ([but34.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but34 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but34 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
					default:
						printf(" wrong choice");
				}
                    printf("\n");
                    break;
                case 4:switch (c)
				{
					case 1:printf("41\t");
                        if ([but41.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but41 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but41 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 2:printf("42\t");
                        if ([but42.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but42 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but42 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("43\t");
                        if ([but43.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but43 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but43 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("44\t");
                        if ([but44.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but44 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but44 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
					default:
						printf(" wrong choice");
				}
                    printf("\n");
                    break;
                    
                default:
                    printf(" wrong choice");
            }
        }
    }
    if(count==4)
    {
        int i=1;
        for (i=1;i<=4;i++)
        {
            switch (i)
            {
                case 1:switch (r)
                {
                    case 1:printf("11\t");
                        if ([but11.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but11 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but11 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("21\t");
                        if ([but21.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but21 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but21 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("31\t");
                        if ([but31.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but31 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but31 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 4:printf("41\t");
                        if ([but41.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but41 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but41 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    
                        
                        
                    default:
                        printf(" wrong choice");
                }
                    printf("\n");
                    break;
                case 2:switch (r)
                {
                    case 1:printf("12\t");
                        if ([but12.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but12 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but12 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("22\t");
                        if ([but22.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but22 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("32\t");
                        if ([but32.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but32 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
                    case 4:printf("42\t");
                        if ([but42.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but42 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but42 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                        
                    
                    default:
                        printf(" wrong choice");
                }
                    printf("\n");
                    break;
                case 3:switch (r)
                {
                    case 1:printf("13\t");
                        if ([but13.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but13 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but13 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("23\t");
                        if ([but23.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but23 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but23 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("33\t");
                        if ([but33.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but33 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 4:printf("43\t");
                        if ([but43.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but43 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but43 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    
                    default:
                        printf(" wrong choice");
                }
                    break;
                case 4:switch (r)
                {
                    case 1:printf("14\t");
                        if ([but14.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but14 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but14 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 2:printf("24\t");
                        if ([but24.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but24 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but24 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 3:printf("34\t");
                        if ([but34.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but34 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but34 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    case 4:printf("44\t");
                        if ([but44.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but44 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but44 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
                    
                    default:
                        printf(" wrong choice");
                }
                    break;
                default:
                    printf(" wrong choice");
                    
            }
        }
        printf("\n");
        printf("\n");
        for (i=1;i<=4;i++)
        {
            if (i==r)
            {
                continue;
            }
            switch (i)
            {
                case 1:switch (c)
				{
					case 1:printf("11\t");
                        if ([but11.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but11 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but11 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 2:printf("12\t");
                        if ([but12.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but12 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but12 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("13\t");
                        if ([but13.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but13 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but13 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("14\t");
                        if ([but14.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but14 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but14 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					
					default:
						printf(" wrong choice");
				}
                    
                    printf("\n");
                    break;
                case 2:switch (c)
				{
					case 1:printf("21\t");
                        
                        if ([but21.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but21 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but21 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }break;
					case 2:printf("22\t");
                        if ([but22.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but22 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but22 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("23\t");
                        if ([but23.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but23 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but23 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("24\t");
                        if ([but24.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but24 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but24 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					
					default:
						printf(" wrong choice");
				}
                    printf("\n");
                    break;
                case 3:switch (c)
				{
					case 1:printf("31\t");
                        if ([but31.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but31 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but31 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 2:printf("32\t");
                        if ([but32.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but32 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but32 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("33\t");
                        if ([but33.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but33 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but33 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("34\t");
                        if ([but34.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but34 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but34 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					
					default:
						printf(" wrong choice");
				}
                    printf("\n");
                    break;
                case 4:switch (c)
				{
					case 1:printf("41\t");
                        if ([but41.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but41 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but41 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 2:printf("42\t");
                        if ([but42.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but42 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but42 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 3:printf("43\t");
                        if ([but43.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but43 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but43 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					case 4:printf("44\t");
                        if ([but44.imageView.image isEqual:[UIImage imageNamed:@"unglow.jpg"]])
                        {
                            [but44 setImage:[UIImage imageNamed:@"glow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        
                        else
                        {
                            [but44 setImage:[UIImage imageNamed:@"unglow.jpg"] forState:UIControlStateNormal];
                            break;
                        }
                        break;
					
					default:
						printf(" wrong choice");
				}
                    printf("\n");
                    break;
                
                default:
                    printf(" wrong choice");
            }
        }
    }
}
-(void)check
{
    if(count==2)
    {
        if([but22.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]])
        {
            if([but23.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]])
            {
                if([but32.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]])
                {
                    if([but33.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]])
                    {
                        self.viewer.hidden=NO;
                        NSLog(@"Succeded dude");
                    }
                }
            }
        }
    }
    if(count==4)
    {
        if ([but22.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
        {
            if ([but32.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
            {
                if ([but42.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                {
                    if ([but23.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                    {
                        if ([but33.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                        {
                            if ([but43.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                            {
                                if ([but24.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                {
                                    if ([but34.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                    {
                                        if ([but44.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                        {
                                            if ([but41.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                            {
                                                if ([but11.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                                {
                                                    if ([but12.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                                    {
                                                        if ([but13.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                                        {
                                                            if ([but14.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                                            {
                                                                if ([but21.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                                                {
                                                                    if ([but31.imageView.image isEqual:[UIImage imageNamed:@"glow.jpg"]]) 
                                                                    {
                                                                        self.viewer.hidden=NO;
                                                                        NSLog(@"Succeeded Dude!!!");
                                                                        
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

    }
}
- (IBAction)undoaction:(id)sender {
    [self swap];
    s--;
    str=[NSString stringWithFormat:@"%d",s];
    self.score.text=str;
    self.undo.hidden=YES;
}
-(void)swap:(int)row s:(int)column
{
    int i;
    for(i=0;i<3;i++)
    {
        if(b[row][i]==0)
            b[row][i]=1;
        else
            b[row][i]=0;
    }
    for(i=0;i<3;i++)
    {
        if(row==i)
            continue;
        if(b[i][column]==0)
            b[i][column]=1;
        else
            b[i][column]=0;
    }
    
}

@end
