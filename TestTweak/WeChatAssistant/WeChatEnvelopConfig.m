//
//  WeChatEnvelopConfig.m
//  DingTalkNoJailTweak
//
//  Created by lingyohunl on 2016/12/16.
//  Copyright © 2016年 yohunl. All rights reserved.
//

#import "WeChatEnvelopConfig.h"

@implementation WeChatEnvelopConfig
- (void)encodeWithCoder:(NSCoder *)encoder 
{
  [encoder encodeBool:self.enableRedEnvolop forKey:@"enableRedEnvolop"];
  [encoder encodeFloat:self.delayTime forKey:@"delayTime"];
  [encoder encodeBool:self.pickOwnerRedEnvelop forKey:@"pickOwnerRedEnvelop"];
  [encoder encodeObject:self.regularText forKey:@"regularText"];
  [encoder encodeObject:self.nameregularText forKey:@"nameregularText"];
    [encoder encodeDouble:self.latitude forKey:@"latitude"];
    [encoder encodeDouble:self.longitude forKey:@"longitude"];
    [encoder encodeBool:self.enableCoordinate forKey:@"enableCoordinate"];
    [encoder encodeObject:self.redenvelopTypeText forKey:@"redenvelopTypeText"];
    
    [encoder encodeBool:self.enableModifyStep forKey:@"enableModifyStep"];
    [encoder encodeInt:self.ylNewStepCount forKey:@"ylNewStepCount"];
    

}

- (id)initWithCoder:(NSCoder *)decoder 
{
  self = [super init];
  if (self) {
    self.enableRedEnvolop = [decoder decodeBoolForKey:@"enableRedEnvolop"];
    self.delayTime = [decoder decodeFloatForKey:@"delayTime"];
    self.pickOwnerRedEnvelop = [decoder decodeBoolForKey:@"pickOwnerRedEnvelop"];
    self.regularText = [decoder decodeObjectForKey:@"regularText"];
    self.nameregularText = [decoder decodeObjectForKey:@"nameregularText"];
      self.latitude = [decoder decodeDoubleForKey:@"latitude"];
      self.longitude = [decoder decodeDoubleForKey:@"longitude"];
      
      self.enableCoordinate = [decoder decodeBoolForKey:@"enableCoordinate"];
      self.redenvelopTypeText = [decoder decodeObjectForKey:@"redenvelopTypeText"];
      
      self.enableModifyStep = [decoder decodeBoolForKey:@"enableModifyStep"];
      self.ylNewStepCount = [decoder decodeIntForKey:@"ylNewStepCount"];
     
    
  }
  return self;
}
@end
