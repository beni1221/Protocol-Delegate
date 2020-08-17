//
//  ViewController.swift
//  Delegat-Method
//
//  Created by Develosity on 8/17/20.
//  Copyright © 2020 Develosity. All rights reserved.
//

import UIKit

// (2)
// thirrim emrin e protokollit ne klasen e childit -> trashegojme funksionet nga parenti
class HomeVC: UIViewController, LoginDelegate {
  
  @IBOutlet weak var userNameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // (3)
  // thirrim funksionin nga parenti dhe e inicialiojme labelen
  func userCreated(name: String) {
    userNameLabel.text = name
   }

  // (7)
  // definojme se HomeVC do jete delegat i LoginVC -> HomeVC di jape data LoginVC
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? LoginVC {
      destination.delegate = self
    }
  }
}


