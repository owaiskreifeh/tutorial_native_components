//
//  CardView.m
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 26/08/2022.
//

#import <Foundation/Foundation.h>

#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RCTCardViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(actionTitle, NSString)
RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)
@end
