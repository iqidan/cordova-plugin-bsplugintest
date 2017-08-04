//
//  BSPluginTest.m
//  NewPlugins
//
//  Created by iqidan on 2017/8/3.
//
//

#import "BSPluginTest.h"

@implementation BSPluginTest

-(void)getScreenMessage:(CDVInvokedUrlCommand *)command{
    UIScreen *screen = [[[UIApplication sharedApplication] keyWindow] screen];
    NSString *size = [NSString stringWithFormat:@"screen: width=%.1f, height=%.1f", screen.bounds.size.width, screen.bounds.size.height];
    CDVPluginResult *pluginResult = NULL;
    if(command.arguments.count > 0){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[NSString stringWithFormat:@"hello, %@~ %@", command.arguments[0], size]];
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:[NSString stringWithFormat:@"how are you~ %@", size]];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
