//
//  DPLYSky.h
//  SkyTest
//
//  Created by Jan Votava on 08/03/14.
//  Copyright (c) 2014 deployment.cz. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface DPLYSky : SKSpriteNode
+ (DPLYSky *) current;
+ (void) createForScene:(SKScene *)scene;
- (void) timeTick:(float)delta;
@end
