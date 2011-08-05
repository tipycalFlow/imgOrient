//
//  imgOrientAppDelegate.h
//  imgOrient
//
//  Created by Aakash Chaudhary on 05/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class imgOrientViewController;

@interface imgOrientAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet imgOrientViewController *viewController;

@end
