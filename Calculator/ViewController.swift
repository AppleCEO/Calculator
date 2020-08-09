//
//  ViewController.swift
//  Calculator
//
//  Created by joon-ho kil on 2020/08/01.
//  Copyright © 2020 joon-ho kil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet private weak var display: UILabel!
  
  private var userIsInTheMiddleOfTyping = false
  @IBAction private func touchDigit(_ sender: UIButton) {
    let digit = sender.currentTitle!
    if userIsInTheMiddleOfTyping {
      let textCurrentlyInDisplay = display.text!
      display.text = textCurrentlyInDisplay + digit
    } else {
      display.text = digit
    }
    userIsInTheMiddleOfTyping = true
  }
  
  private var displayValue: Double {
    get {
      return Double(display.text!)!
    }
    set {
      display.text = String(newValue)
    }
  }
  
  private var brain = CalculatorBrain()
  
  @IBAction private func performOperation(_ sender: UIButton) {
    if userIsInTheMiddleOfTyping {
      brain.setOperand(operand: displayValue)
      userIsInTheMiddleOfTyping = false
    }
    
    if let mathmaticalSymbol = sender.currentTitle {
      brain.performOperation(symbol: mathmaticalSymbol)
    }
    
    displayValue = brain.result
  }
  
}

