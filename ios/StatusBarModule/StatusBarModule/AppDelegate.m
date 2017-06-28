//
//  AppDelegate.m
//  StatusBarModule
//
//  Created by JoAmS on 2017. 6. 14..
//  Copyright © 2017년 t5online. All rights reserved.
//

#import "AppDelegate.h"
#import <NebulaCore/Nebula.h>
#import <NebulaCore/NBPluginService.h>
#import "StatusBarPlugin.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

#pragma mark - NebulaDelegate Methods
- (void)loadPlugins {
    NBPluginService* pluginService = [Nebula serviceWithKey:SERVICE_KEY_PLUGIN];
    [pluginService addPluginClass:@"StatusBarPlugin" actionGroup:PLUGIN_GROUP_STATUSBAR];
}


@end
