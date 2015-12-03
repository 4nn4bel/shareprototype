//
//  ViewController.m
//  shareprototype
//
//  Created by Bel Work Projects on 1/12/15.
//  Copyright © 2015 Bel Work Projects. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareButtonClicked:(id)sender {
    [self shareContent];
}



-(void)shareContent{

    NSString *message = @"Detective Conan Rocks";
    UIImage *image = [UIImage imageNamed:@"DC_characters"];
    NSArray *shareItems =@[message, image];
    UIActivityViewController *avc =[[UIActivityViewController alloc]initWithActivityItems:shareItems applicationActivities:nil];
    
    [self presentViewController:avc animated:YES completion:nil];
    NSLog(@"testing");
    
    //TO do
    //to exclude actions extension like print, save images, do the following
    //avc.excludedActivityTypes = @[UIActivityTypeAssignToContact,UIActivityTypePostToWeibo];
    
    //avc.excludedActivityTypes = @[UIActivityTypeAssignToContact];


    //if text to long for some app or customise the text share for different app(passing data before selecting which app to share to). Hence we need to subclass(creating new files) it. Below is method 2 without subclass, but the activity types belong to Apple. Cannot have custom types.
    
    //detect which application user use to share (working) without subclass
    [avc setCompletionWithItemsHandler:^(NSString *activityType, BOOL completed,NSArray *returnedItems, NSError *activityError) {
        if([activityType isEqualToString: UIActivityTypeMail]){
            NSLog(@"Mail");
        }
        if([activityType isEqualToString: UIActivityTypePostToFacebook]){
            NSLog(@"Facebook");
        }
        
    }];
    
   
    
    
    
    NSLog(@"end of sharing method call");

}


//- (NSArray *)avc:(NSArray *)activityViewController itemsForActivityType:(NSString *)activityType
//{
//    if ([activityType isEqualToString:UIActivityTypePostToTwitter]) {
//        return @[@"Twitter text"];
//    } else if ([activityType isEqualToString:UIActivityTypeMessage]) {
//        return @[@"Message text"];
//    } else if ([activityType isEqualToString:UIActivityTypeMail]) {
//        return @[@"Mail text"];
//    } else if ([activityType isEqualToString:UIActivityTypePostToFacebook]) {
//        return @[@"Facebook text"];
//    } else {
//        return @[@"Default text"];
//    }
//}



@end
