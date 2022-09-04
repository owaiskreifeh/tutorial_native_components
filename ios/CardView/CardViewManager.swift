//
//  CardViewManager.swift
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 26/08/2022.
//

import Foundation

@objc (RCTCardViewManager)
class CardViewManager: RCTViewManager {

  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

  override func view() -> UIView! {
    return CardView()
  }

}
