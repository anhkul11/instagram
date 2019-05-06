//
//  AppDelegate+Extension.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import Foundation

extension AppDelegate {
  func setupRootController() {
    
    let rootViewController = LaunchViewController.instantiate()
    rootViewController.configure(LaunchViewModel())
    
    rootNavigationController = RootNavigationController(rootViewController: rootViewController)
    window?.rootViewController = rootNavigationController
  }
}
