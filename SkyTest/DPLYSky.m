//
//  DPLYSky.m
//  SkyTest
//
//  Created by Jan Votava on 08/03/14.
//  Copyright (c) 2014 deployment.cz. All rights reserved.
//

#import "DPLYSky.h"

@implementation DPLYSky
static SKTexture* bgTextureAll = Nil;
static DPLYSky* current = Nil;
static float currentTime = 0;

+ (SKTexture *) bgTextureAll {
    if(bgTextureAll)
        return bgTextureAll;
    
    return bgTextureAll = [SKTexture textureWithImageNamed:@"sky_bg"];
}

+ (DPLYSky *) current {
    return current;
}

+ (void) createForScene:(SKScene *)scene {
    current = [[DPLYSky alloc ] init];
    [current setSize:CGSizeMake(1, 8)];
    [current timeTick:0];
    
    current.xScale = scene.size.width;
    current.yScale = scene.size.height/8;
    
    current.position = CGPointMake(scene.size.width/2, scene.size.height/2);
    
    [scene addChild:current];
}

- (void) timeTick:(float)delta {
    currentTime += delta / 10;
    
    if(currentTime > 24) {
        currentTime -= 24;
    }
    
    SKTexture *bgTexture = [SKTexture textureWithRect:CGRectMake(currentTime/24, 0, 1.0/24, 1) inTexture:self.class.bgTextureAll];
    [self setTexture:bgTexture];
}
@end
