//
//  ViewController.h
//  shareprototype
//
//  Created by Bel Work Projects on 1/12/15.
//  Copyright © 2015 Bel Work Projects. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>

@interface ViewController : UIViewController<UIActivityItemSource>
//might need <UIActivityItemSource>

@property (weak, nonatomic) IBOutlet UIButton *shareButton;



- (IBAction)shareButtonClicked:(id)sender;

@end

