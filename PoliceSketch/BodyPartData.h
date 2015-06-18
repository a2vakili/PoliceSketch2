//
//  BodyPartData.h
//  PoliceSketch
//
//  Created by Arsalan Vakili on 2015-06-15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BodyPartData : NSObject


-(void) nextBodyPart;
-(void) previousBodyPart;
-(UIImage *)currentBodyPart;


- (instancetype)initWithPartName:(NSString *)bodyPartName;
@end
