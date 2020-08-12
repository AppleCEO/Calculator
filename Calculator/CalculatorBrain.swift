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
  
  var operations: Dictionary<String,Operation> = [
    "π" : Operation.Constant(Double.pi), // M_PI
    "e" : Operation.Constant(M_E), // M_E
    "√" : Operation.UnaryOperation(sqrt), // sqrt
    "cos" : Operation.UnaryOperation(cos) // cos
  ]
  
  enum Operation {
    case Constant(Double)
    case UnaryOperation((Double) -> Double)
    case BinaryOperation
    case Equals
  }
  
  func performOperation(symbol: String) {
    if let operation = operations[symbol] {
      switch operation {
      case .Constant(let associatedConstantValue): accumulator = associatedConstantValue
      case .UnaryOperation(let foo): accumulator = foo(accumulator)
      case .BinaryOperation: break
      case .Equals: break
      }
    }
  }
  
  var result: Double {
    get {
      return accumulator
    }
  }
}
