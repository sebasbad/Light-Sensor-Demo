//
//  ViewController.m
//  Light Sensor Demo
//
//  Created by Sebastián Badea on 13/5/16.
//  Copyright © 2016 Sebastian Badea. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *needleImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)react {
    double brightness = [[UIScreen mainScreen] brightness];
    
    CGAffineTransform rotationTransform = CGAffineTransformMakeRotation(brightness * M_PI - M_PI_2);
    self.needleImageView.transform = rotationTransform;
}

@end
