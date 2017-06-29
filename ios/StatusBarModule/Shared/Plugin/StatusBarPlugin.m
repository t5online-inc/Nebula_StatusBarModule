//
//  StatusBarPlugin.m
//  StatusBarModule
//
//  Created by JoAmS on 2017. 6. 14..
//  Copyright © 2017년 t5online. All rights reserved.
//

#import "StatusBarPlugin.h"
#import "UIColor+Hex.h"

@implementation StatusBarPlugin

- (void)setStatusBar:(NSNumber*)isHidden backgroundColor:(NSString*)backgroundColor isDefault:(NSNumber*)isDefault
{
    BOOL isSync = [self.bridgeContainer isSync];
    NSDictionary* retData = nil;
    
    if (isSync) {
        retData = [NSDictionary dictionaryWithObjectsAndKeys:
                                 @(STATUS_CODE_ERROR) , @"code",
                                 @"unsupported syncronize" , @"message",
                                 nil];
    } else {
        NBWebViewController* viewController = (NBWebViewController*)self.bridgeContainer.viewController;
        
        if([viewController isKindOfClass:[NBWebViewController class]]){
            UIColor* color = [UIColor colorWithHexString:backgroundColor];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [viewController setStatusBar:[isHidden boolValue] backgroundColor:color isDefault:[isDefault boolValue]];
            });
        }
        
        retData = [NSDictionary dictionaryWithObjectsAndKeys:
                                 @(STATUS_CODE_SUCCESS) , @"code",
                                 @"" , @"message",
                                 nil];
    }
    
    [self resolve:retData];
}

@end
