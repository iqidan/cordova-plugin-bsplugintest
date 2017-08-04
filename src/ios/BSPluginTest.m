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
//    UIScreen *screen = [[UIApplication sharedApplication] keyWindow].screen;
    CDVPluginResult *pluginResult = NULL;
    if(command.arguments.count > 0){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[NSString stringWithFormat:@"hello22, %@~", command.arguments[0]]];
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"how are you22~"];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
