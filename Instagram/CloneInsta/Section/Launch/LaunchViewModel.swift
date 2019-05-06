//
//  LaunchViewController+ViewModel.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import SwiftyUserDefaults

protocol LaunchViewModelInputs: class {
  
}

protocol LaunchViewModelOutputs: class {
  func configUserState() -> Observable<UserState>
}

protocol LaunchViewModelType: class {
  var inputs: LaunchViewModelInputs { get }
  var outputs: LaunchViewModelOutputs { get }
}

class LaunchViewModel: LaunchViewModelType, LaunchViewModelInputs,LaunchViewModelOutputs {
  
  // MARK: Init method
  init() {
    
  }
  
  var inputs: LaunchViewModelInputs { return self }
  
  var outputs: LaunchViewModelOutputs { return self }
  
  func configUserState() -> Observable<UserState> {
    guard let state = Defaults[.userState] else {
      Defaults[.userState] = .firstInstall
     return Observable.of(.firstInstall)
    }
    return Observable.of(state)
  }
}
