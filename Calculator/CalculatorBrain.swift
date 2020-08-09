//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by joon-ho kil on 2020/08/09.
//  Copyright © 2020 joon-ho kil. All rights reserved.
//

import Foundation

class CalculatorBrain {
  private var accumulator = 0.0
  
  func setOperand(operand: Double) {
    accumulator = operand
  }
  
  var operations: Dictionary<String,Double> = [
    "π" : Double.pi,
    "e" : M_E
  ]
  
  func performOperation(symbol: String) {
    if let constant = operations[symbol] {
      accumulator = constant
    }
  }
  
  var result: Double {
    get {
      return accumulator
    }
  }
}
