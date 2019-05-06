//
//  LaunchViewController.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import UIKit
import RxSwift

class LaunchViewController: UIViewController {
  
  // MARK: Instantiate
  internal static func instantiate() -> LaunchViewController {
    return Storyboard.Main.instantiate(type: LaunchViewController.self)
  }
  
  // MARK: Variables
  var viewModel: LaunchViewModel!
  let disposeBag = DisposeBag()
  
  // MARK: Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    bindingViewModel()
  }
  
  // MARK: Config functions
  func configure(_ viewModel: LaunchViewModel) {
    self.viewModel = viewModel
  }
}
