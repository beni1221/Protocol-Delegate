//
//  LoginVC.swift
//  Delegat-Method
//
//  Created by Develosity on 8/17/20.
//  Copyright © 2020 Develosity. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

  @IBOutlet weak var userNameTexField: UITextField!
  // (4)
  // deklarojme delegatin dhe e lidhim me protokolin
  var delegate: LoginDelegate?
  
  override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  @IBAction func doneButton(_ sender: Any) {
    // (5)
    // e lidhim delegatin me textfieldin -> i tregojme qe duhet te marre tekst
    delegate?.userCreated(name: userNameTexField.text ?? "No name")
    dismiss(animated: true, completion: nil)
  }
}

// (1)
// krijojme protokollin -> funksionin qe do bart data nga parenti te childi
protocol LoginDelegate {
  func userCreated (name: String)
}


