//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muhammad Shayan on 26/08/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiStringValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiStringValue
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        default:
            print("")
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
}
