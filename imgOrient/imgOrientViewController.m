//
//  imgOrientViewController.m
//  imgOrient
//
//  Created by Aakash Chaudhary on 05/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "imgOrientViewController.h"

@implementation imgOrientViewController
@synthesize orientation,mImageView;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - Image rotate/flip methods

-(IBAction) Rotate90DegreesLeft{
    
    if(orientation==0 || orientation==4)
        orientation +=2;
    else if(orientation==1 || orientation==5)
        orientation +=2;
    else if(orientation==2 || orientation==6)
        orientation -=1;
    else if(orientation==3 || orientation==7)
        orientation -=3;
    
    UIImage *temp = [[UIImage alloc] initWithCGImage:[UIImage imageNamed:@"1.png"].CGImage scale:1.0 orientation: orientation];
    [mImageView setImage:temp];
}

-(IBAction) Rotate90DegreesRight{
    
    if(orientation==0 || orientation==4)
        orientation +=3;
    else if(orientation==1 || orientation==5)
        orientation +=1;
    else if(orientation==2 || orientation==6)
        orientation -=2;
    else if(orientation==3 || orientation==7)
        orientation -=2;
    
    UIImage *temp = [[UIImage alloc] initWithCGImage:[UIImage imageNamed:@"1.png"].CGImage scale:1.0 orientation: orientation];
    [mImageView setImage:temp];
}

-(IBAction) VerticalFlipEffect{
	
    if(orientation==0 || orientation==4)
        orientation = (orientation + 5)%8;
    else if(orientation==1 || orientation==5)
        orientation = (orientation + 3)%8;
    else if(orientation==2 || orientation==6)
        orientation = (orientation + 4)%8;
    else if(orientation==3 || orientation==7)
        orientation = (orientation + 4)%8;
    
    UIImage *temp = [[UIImage alloc] initWithCGImage:[UIImage imageNamed:@"1.png"].CGImage scale:1.0 orientation: orientation];
    [mImageView setImage:temp];
}

-(IBAction) HorizontalFlipEffect{
    
    if(orientation==0 || orientation==4)
        orientation = (orientation + 4)%8;
    else if(orientation==1 || orientation==5)
        orientation = (orientation + 4)%8;
    else if(orientation==2 )
		orientation=7;
	else if(orientation==7)
		orientation=2;
	else if(orientation==3 )
		orientation=6;
	else if(orientation==6)
		orientation=3;
	
    
    UIImage *temp = [[UIImage alloc] initWithCGImage:[UIImage imageNamed:@"1.png"].CGImage scale:1.0 orientation: orientation];
    [mImageView setImage:temp];
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    orientation = 0;
    [mImageView setImage:[UIImage imageNamed:@"1.png"]];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
