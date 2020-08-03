//
//  ViewController.swift
//  Calculator
//
//  Created by joon-ho kil on 2020/08/01.
//  Copyright © 2020 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBAction func touchDigit(_ sender: UIButton) {
    let digit = sender.currentTitle!
    print("touched \(digit) digit")
  }
  
}

