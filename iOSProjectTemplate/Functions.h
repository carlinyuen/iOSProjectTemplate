/**
	@file	Functions.h
	@author	Carlin
	@date	7/12/13
	@brief	iOSProjectTemplate
*/
//  Copyright (c) 2013 Carlin. All rights reserved.

#ifdef DEBUG

	/** For getting object class name */
	#import <objc/runtime.h>

	/** Print just like NSLog */
	#define debugLog NSLog

	/** Print line & function information */
	#define debugFunc(s) NSLog(@"\n%s[%d] %@\n\n", __PRETTY_FUNCTION__, __LINE__, s)

	/** Prints object with object class name */
	#define debugObject(x) NSLog(@"\n%s[%d]\n\n%s => %@\n\n", __PRETTY_FUNCTION__, __LINE__, object_getClassName(x), (x))

	/** Print CGRect */
	#define debugRect(r) NSLog(@"\n\n{\n\tx:%f,\n\ty:%f,\n\tw:%f,\n\th:%f\n}", r.origin.x, r.origin.y, r.size.width, r.size.height)

	/** Print stacktrace */
	#define debugStack() NSLog(@"%@",[NSThread callStackSymbols])

#else	/** No-op */
	#define debugLog
	#define debugFunc
	#define debugObject(x)
	#define debugRect(r)
	#define debugStack()
#endif


//////////////////////////////////////////////
// Utility Functions

	/** Rotate CGRect */
	#define rotateCGRect(r) (CGRectMake(r.origin.y, r.origin.x, r.size.height, r.size.width))

	/** Create UIColor form hex code color value */
	#define UIColorFromHex(hex) [UIColor colorWithRed:((float)((hex & 0xFF000000) >> 24))/255.0 green:((float)((hex & 0xFF0000) >> 16))/255.0 blue:((float)((hex & 0xFF00) >> 8))/255.0 alpha:((float)(hex & 0xFF))/255.0]

	/** Generate random float in range */
	#define randomf(rangeStart, rangeEnd) ((((float) (arc4random() % ((unsigned)RAND_MAX + 1)) / RAND_MAX) * (rangeEnd - rangeStart)) + rangeStart)
	

//////////////////////////////////////////////
// Screen Dimensions

	/** Get device screen size in points */
	#define getScreenBounds() ([UIScreen mainScreen].bounds)

	/** Get frame that application runs in (- status bar) */
	#define getScreenFrame() ([UIScreen mainScreen].applicationFrame)

	/** Check device interface idiom */
	#define isPhone (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
	#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


//////////////////////////////////////////////
// App Bundle & Device Properties

	/** Get Device OS version */
	#define getDeviceOSVersionString() ([[UIDevice currentDevice] systemVersion])

	/** Get Device Model */
	#define getDevicePlatformString() ([[UIDevice currentDevice] platformString])

	/** Get build number */
	#define getBuildString() ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"])

	/** Get version number */
	#define getVersionString() ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"])

