//
//  LauchViewController+Extension.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

extension LaunchViewController {
  func bindingViewModel() {
    viewModel.outputs.configUserState().subscribe(onNext: { (state) in
      switch state {
      case .firstInstall:
        let loginViewController = LoginViewController.instantiate()
        UIAppDelegate.rootNavigationController.viewControllers = [loginViewController]
      case .logedIn:
        let loginViewController = LoginViewController.instantiate()
        self.present(loginViewController, animated: true, completion: nil)
      case .logedOut:
        let loginViewController = LoginViewController.instantiate()
        self.present(loginViewController, animated: true, completion: nil)
      }
    }).disposed(by: disposeBag)
  }
}
