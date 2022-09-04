//
//  ButtonViewManager.swift
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 27/08/2022.
//

import Foundation

@objc (RCTButtonViewManager)
class ButtonViewManager: RCTViewManager {

  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

  override func view() -> UIView! {
    return ButtonView()
  }

}
