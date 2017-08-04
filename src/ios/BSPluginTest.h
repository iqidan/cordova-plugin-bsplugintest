//
//  BSPluginTest.h
//  NewPlugins
//
//  Created by iqidan on 2017/8/3.
//
//

#import <Cordova/CDVPlugin.h>

@interface BSPluginTest : CDVPlugin

-(void)getScreenMessage:(CDVInvokedUrlCommand *)command;

@end
