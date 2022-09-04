//
//  ProfileViewManager.swift
//  tutorial_native_components
//
//  Created by Owais Kreifeh on 27/08/2022.
//

import Foundation

@objc (RCTProfileViewManager)
class ProfileViewManager: RCTViewManager {

  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

  override func view() -> UIView! {
    return ProfileView()
  }

}
