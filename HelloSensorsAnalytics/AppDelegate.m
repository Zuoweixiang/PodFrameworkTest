//
//  AppDelegate.m
//  HelloSensorsAnalytics
//
//  Created by 曹犟 on 15/7/4.
//  Copyright (c) 2015年 SensorsData. All rights reserved.
//

#import "AppDelegate.h"

#import "SensorsAnalyticsSDK.h"

@interface AppDelegate ()

@end
#import "NSString+HashCode.h"
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [SensorsAnalyticsSDK sharedInstanceWithServerURL:@"http://zhaohaiying.cloud.sensorsdata.cn:8006/sa?project=default&token=9d8f18c23084485f"
                                     andConfigureURL:@"http://zhaohaiying.cloud.sensorsdata.cn:8006/config/?project=default"
                                        andDebugMode:SensorsAnalyticsDebugAndTrack];
    [[SensorsAnalyticsSDK sharedInstance] enableAutoTrack:SensorsAnalyticsEventTypeAppStart |
     SensorsAnalyticsEventTypeAppEnd |
     SensorsAnalyticsEventTypeAppViewScreen |
     SensorsAnalyticsEventTypeAppClick];
#ifdef DEBUG
    //[[SensorsAnalyticsSDK sharedInstance] enableEditingVTrack];
#endif
    [[SensorsAnalyticsSDK sharedInstance] setMaxCacheSize:20000];
    [[SensorsAnalyticsSDK sharedInstance] enableHeatMap];
    //[[SensorsAnalyticsSDK sharedInstance] addHeatMapViewControllers:[NSArray arrayWithObject:@"DemoController"]];
    
    [[SensorsAnalyticsSDK sharedInstance] setFlushNetworkPolicy:SensorsAnalyticsNetworkTypeWIFI];

    [[SensorsAnalyticsSDK sharedInstance] addWebViewUserAgentSensorsDataFlag];
    NSString *string = @"H4sIAAAAAAAAE5VRwUrDQBD9l7HHtCRNsmlya2sLgqCg6EEkrMnUDKa7YbNpkdIf8Bf8AL14F8S/UfwNd1PBKhR0T8ubN2/evLlYgaY5QuKF7iCOB6HrsjB0INWKZzcp5abCBm7kAC5QaEigM6yqM8LlSaYQBRjqrGzqIv0hw1g/dn0Hcqo1iUy3QhCZ0v5oFHXH/ijsBhO2342nzOtOhqzPpoHrT/yREayUrFBpwhqSFXRyXFCG/1LoyDpdoKpJCtPkeT3XghlXilAZ5O356f3+9ePh5f3ucUM3IB2d2D/V6YxUrdOc30KiVYMGrNtl0wLpujAhRD77BpeU6wKSwAsMNpc5llbsuJACI8ezkgL1UqqbVN9WJiI4P5geWLikq++xvKq2LEc9d+N5zkUz45luVGvcZF+ixZc0o9/uBLcXgLNTwzrkjciKYT6WQitZlqZ7M3E7l96gF8HagS9f7ckNrfW12rBz1JzK3ap77dul/cclbescdSHtiTOTIKzXl5/IoKXJmgIAAA==";
    int hash =  [string sensorsdata_hashCode];
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    if ([[SensorsAnalyticsSDK sharedInstance] handleHeatMapUrl:url]) {
        return YES;
    }
    return NO;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



@end
