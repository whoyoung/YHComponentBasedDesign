//
//  AppDelegate.m
//  YHComponentBasedDesign
//
//  Created by young on 2019/9/14.
//  Copyright © 2019 young. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@import YHInternal;
@import DirectorComponent;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    [YHDirector director].rootNav = nav;
    [self registerDependency];
    
    return YES;
}

- (void)registerDependency {
    [YHInternalModule registerModule];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}


- (void)applicationWillTerminate:(UIApplication *)application {
    
}


@end
