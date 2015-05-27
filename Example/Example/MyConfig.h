
//
//  MyConfig.h
//  TaiPingApp
//
//  Created by apple on 15/5/27.
//  Copyright (c) 2015年 Jonathan Tribouharet. All rights reserved.
//

#ifndef TaiPingApp_MyConfig_h
#define TaiPingApp_MyConfig_h


#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height
#define START_Y 64
#define UIColorFromRGB (rgbValue)  [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#endif
