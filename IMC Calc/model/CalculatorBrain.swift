//
//  CalculatorBrain.swift
//  IMC Calc
//
//  Created by Bryan Barreto on 23/08/20.
//  Copyright © 2020 Bryan Barreto. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi:BMI?
    
    mutating func calculateBmi(peso:Float, altura: Float){
        let bmiValue = peso / pow(altura, 2)
        var adviceMessage = ""
        var color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        if(bmiValue < 18.5){
            //abaixo do peso
            adviceMessage = "abaixo do peso"
            color = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        }else if(bmiValue < 24.9){
            // peso normal
            adviceMessage = "peso normal"
            color = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            // acima do peso
            adviceMessage = "acima do peso"
            color = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
        
        bmi = BMI(bmiValue: bmiValue, adviceMessage: adviceMessage, color: color)
    }
    
    func getBmiValue()->String{
        let bmiFormated = String(format: "%.1f", bmi?.bmiValue ?? 0.0)
        return bmiFormated
    }
    
    func getBmiColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    func getBmiAdviceMessage()->String{
        return bmi?.adviceMessage ?? "Erro"
    }
}
