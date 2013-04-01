//
//  ViewController.m
//  Slider
//
//  Created by iOS12 on 3/26/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *labalA;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Controller:(id)sender {
    UISlider * slider = (UISlider *) sender;
    [self updateWhensliderChange:slider.value];
}
-(void) updateWhensliderChange :(double) value{
    self.labalA.text = [NSString stringWithFormat:@"%3.2f",value];
    self.labalA.center = CGPointMake(31 + (value/self.slider.maximumValue)*260 , 50+30/2);
    self.imageView.alpha =value;
}
@end
