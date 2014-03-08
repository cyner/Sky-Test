//
//  DPLYMyScene.m
//  SkyTest
//
//  Created by Jan Votava on 08/03/14.
//  Copyright (c) 2014 deployment.cz. All rights reserved.
//

#import "DPLYMyScene.h"
#import "DPLYSky.h"

@implementation DPLYMyScene {
    NSTimeInterval _lastUpdateTime;
    NSTimeInterval _dt;
}

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */

        [DPLYSky createForScene:self];
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    if (_lastUpdateTime) {
        _dt = currentTime - _lastUpdateTime;
    }
    _lastUpdateTime = currentTime;

    [[DPLYSky current] timeTick:_dt]; // Update time for sky
}

@end
