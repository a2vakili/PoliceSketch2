//
//  BodyPartData.m
//  PoliceSketch
//
//  Created by Arsalan Vakili on 2015-06-15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "BodyPartData.h"






@implementation BodyPartData {
    int index;
    NSMutableArray *array;
}

- (instancetype)initWithPartName:(NSString *)bodyPartName
{
    self = [super init];
    if (self) {
        
        index = 0;
        
        array = [[NSMutableArray alloc] init];
    
        
        for (int i=1 ; i<6; i++) {
            //[recipient message: parameter];
            //[[NSString alloc] init];
            NSString *imageName = [NSString stringWithFormat:@"%@_%i.jpg", bodyPartName, i];
            UIImage *image = [UIImage imageNamed:imageName];
            
            
            [array addObject:image];
            
        }
        
    
    }
    return self;
}

-(void)nextBodyPart{
    index++;
    if (index==5) {
        index=0;
    }
    
}


-(void)previousBodyPart{
    if (index==0) {
        index=5;
    }
    index--;
}

-(UIImage *)currentBodyPart{
    return array[index];
}

@end
