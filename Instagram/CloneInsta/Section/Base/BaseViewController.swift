//
//  BaseViewController.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import UIKit

enum NavigationBarButton {
  case camera
  case television
  case inbox
  case options
  case back
  case menu
  case none
}

class BaseViewController: UIViewController {
  
  var leftNavigationButton: NavigationBarButton = .back {
    didSet {
      switch leftNavigationButton {
      case .back:
        self.navigationItem.leftBarButtonItem = backNavigationButton
      case .camera:
        self.navigationItem.leftBarButtonItem = cameraNavigationButton
      case .none:
        self.navigationItem.leftBarButtonItem = nil
      default:
        break
      }
    }
  }
  
  var rightNavigationButton: NavigationBarButton = .back {
    didSet {
      switch rightNavigationButton {
      case .back:
        break
      case .television:
        self.navigationItem.rightBarButtonItem = televisionNavigationButton
      case .inbox:
        self.navigationItem.rightBarButtonItem = inboxNavigationButton
      case .none:
        self.navigationItem.rightBarButtonItem = nil
      default:
        break
      }
    }
  }
  
  lazy var backNavigationButton: UIBarButtonItem = {
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    button.setImage(UIImage(named: InstaImage.iconBack), for: .normal)
    button.addTarget(self, action: #selector(popBack), for: .touchUpInside)
    return UIBarButtonItem(customView: button)
  }()
  
  lazy var cameraNavigationButton: UIBarButtonItem = {
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    button.setImage(UIImage(named: InstaImage.iconCamera), for: .normal)
    button.addTarget(self, action: #selector(cameraButtonTapped), for: .touchUpInside)
    return UIBarButtonItem(customView: button)
  }()
  
  lazy var televisionNavigationButton: UIBarButtonItem = {
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    button.setImage(UIImage(named: InstaImage.iconTv), for: .normal)
    button.addTarget(self, action: #selector(televisionButtonTapped), for: .touchUpInside)
    return UIBarButtonItem(customView: button)
  }()
  
  lazy var inboxNavigationButton: UIBarButtonItem = {
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    button.setImage(UIImage(named: InstaImage.iconInbox), for: .normal)
    button.addTarget(self, action: #selector(inboxButtonTapped), for: .touchUpInside)
    return UIBarButtonItem(customView: button)
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
}

// MARK: Bar button actions
extension BaseViewController {
  @objc func popBack() {
    self.dismiss(animated: true, completion: nil)
  }
  
  @objc func cameraButtonTapped() {}
  
  @objc func televisionButtonTapped() {}
  
  @objc func inboxButtonTapped() {}
}
