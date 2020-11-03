//
//  ViewController.m
//  Demo
//
//  Created by JD on 2020/4/7.
//  Copyright © 2020 jd. All rights reserved.
//

#import "ViewController.h"
#import "DemoFeature1.h"
#import "JDFeatureDemoConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)configFeature {
    [self.pageManager register:[DemoFeature1 featureWithID:JDPageFeatureDemo1]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
