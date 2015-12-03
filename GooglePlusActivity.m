//
//  GooglePlusActivity.m
//  shareprototype
//
//  Created by Bel Work Projects on 3/12/15.
//  Copyright © 2015 Bel Work Projects. All rights reserved.
//

#import "GooglePlusActivity.h"

@implementation GooglePlusActivity


// Return the name that should be displayed below the icon in the sharing menu
- (NSString *)activityTitle {
    return @"Google+";
}

// Return the string that uniquely identifies this activity type
- (NSString *)activityType {
    return @"com.captech.googlePlusSharing";
}

// Return the image that will be displayed  as an icon in the sharing menu
- (UIImage *)activityImage {
    return [UIImage imageNamed:@"Google-icon.png"];
}

// allow this activity to be performed with any activity items
- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    return YES;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
    // Loop through all activity items and pull out the two we are looking for
    for (NSObject *item in activityItems) {
        if ([item isKindOfClass:[NSString class]]) {
            self.text = (NSString *) item;
        } else if ([item isKindOfClass:[NSURL class]]) {
            self.url = (NSURL *) item;
        }
    }
}



@end
