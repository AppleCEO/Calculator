//
//  ViewController.swift
//  Calculator
//
//  Created by joon-ho kil on 2020/08/01.
//  Copyright © 2020 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var display: UILabel!
  
  var userIsInTheMiddleOfTyping = false
  @IBAction func touchDigit(_ sender: UIButton) {
    let digit = sender.currentTitle!
    if userIsInTheMiddleOfTyping {
      let textCurrentlyInDisplay = display.text!
      display.text = textCurrentlyInDisplay + digit
    } else {
      display.text = digit
    }
    userIsInTheMiddleOfTyping = true
  }
  
  var displayValue: Double {
    get {
      return Double(display.text!)!
    }
    set {
      display.text = String(newValue)
    }
  }
  
  @IBAction func performOperation(_ sender: UIButton) {
    if let mathmaticalSymbol = sender.currentTitle {
      if mathmaticalSymbol == "π" {
        displayValue = Double.pi
      } else if mathmaticalSymbol == "√" {
        displayValue = sqrt(displayValue)
      }
    }
    
  }
  
}

