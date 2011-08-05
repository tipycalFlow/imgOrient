//
//  imgOrientViewController.h
//  imgOrient
//
//  Created by Aakash Chaudhary on 05/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface imgOrientViewController : UIViewController {
    IBOutlet UIImageView *mImageView;
	UIImageOrientation orientation;
}

@property(nonatomic,retain) UIImageView *mImageView;
@property(nonatomic,assign) UIImageOrientation orientation;

-(IBAction)Rotate90DegreesLeft;
-(IBAction)Rotate90DegreesRight;
-(IBAction)VerticalFlipEffect;
-(IBAction)HorizontalFlipEffect;


@end
