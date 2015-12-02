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

    NSString *message = @"Dectective Conan Rocks";
    UIImage *image = [UIImage imageNamed:@"DC_characters"];
    NSArray *shareItems =@[message, image];
    UIActivityViewController *avc =[[UIActivityViewController alloc]initWithActivityItems:shareItems applicationActivities:nil];
    
    [self presentViewController:avc animated:YES completion:nil];

}

@end
