//
//  ProfileView.m
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 27/08/2022.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RCTProfileViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(username, NSString)
@end
