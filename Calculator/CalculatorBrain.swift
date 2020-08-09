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
  
  func performOperation(symbol: String) {
    switch symbol {
    case "π": accumulator = Double.pi
    case "√": accumulator = sqrt(accumulator)
    default: break
    }
  }
  
  var result: Double {
    get {
      return accumulator
    }
  }
}
