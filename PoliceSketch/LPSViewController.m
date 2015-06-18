//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "BodyPartData.h"

@interface LPSViewController ()

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];    
    // Here is where you will create the buttons & image views and add them to the view.
    self.eyes = [[BodyPartData alloc] initWithPartName:@"eyes"];
    self.nose = [[BodyPartData alloc] initWithPartName:@"nose"];
    self.mouth = [[BodyPartData alloc] initWithPartName:@"mouth"];
}
- (IBAction)rightButton:(id)sender {
    [self.eyes nextBodyPart];
    
    UIImage *image = [self.eyes currentBodyPart];
    
    self.eyeimage.image = image;
    
// all the same or VERY similar:
//    _eyeimage.image = image;
//    
//    [_eyeimage setImage:image];
//    
//    self.eyeimage.image = image;
//    
//    UIImageView *imageView = [self eyeimage];
//    [imageView setImage:image];
    
}

- (IBAction)rightButton2:(id)sender {
    [self.mouth nextBodyPart];
    UIImage *image= [self.mouth currentBodyPart];
    self.mouthImage.image= image;
}
- (IBAction)rightButton3:(id)sender {
    [self.nose nextBodyPart];
    UIImage *image= [self.nose currentBodyPart];
    self.noseImage.image=image;
}
- (IBAction)leftButton1:(id)sender {
    [self.eyes previousBodyPart];
    UIImage *image= [self.eyes currentBodyPart];
    self.eyeimage.image=image;
}
- (IBAction)leftButton2:(id)sender {
    [self.mouth previousBodyPart];
    UIImage *image= [self.mouth currentBodyPart];
    self.mouthImage.image=image;
}
- (IBAction)leftButton3:(id)sender {
    [self.nose previousBodyPart];
    UIImage *image= [self.nose currentBodyPart];
    self.noseImage.image=image;
}

@end
