//
//  ButtonView.m
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 27/08/2022.
//

#import <Foundation/Foundation.h>

#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RCTButtonViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(label, NSString)
RCT_EXPORT_VIEW_PROPERTY(isDefault, BOOL)
RCT_EXPORT_VIEW_PROPERTY(isDisabled, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)
@end
