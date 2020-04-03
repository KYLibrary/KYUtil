//
//  KYViewController.m
//  KYUtil
//
//  Created by kyleboy on 04/01/2020.
//  Copyright (c) 2020 kyleboy. All rights reserved.
//

#import "KYViewController.h"
#import "UIImage+KYAdd.h"
#import "KYTest.h"

@interface KYViewController ()

@end

@implementation KYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [UIImage imageNamed:@"sdjfkds" inBundleForClass:[KYTest class]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.    
}

@end
