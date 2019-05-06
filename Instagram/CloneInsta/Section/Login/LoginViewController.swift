//
//  LoginViewController.swift
//  CloneInsta
//
//  Created by Anh Lê on 5/6/19.
//  Copyright © 2019 Anh Lê. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
  // MARK: Instantiate
  internal static func instantiate() -> LoginViewController {
    return Storyboard.Login.instantiate(type: LoginViewController.self)
  }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
