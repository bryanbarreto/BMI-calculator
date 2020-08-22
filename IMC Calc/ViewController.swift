//
//  ViewController.swift
//  IMC Calc
//
//  Created by Bryan Barreto on 22/08/20.
//  Copyright © 2020 Bryan Barreto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alturaText: UILabel!
    @IBOutlet weak var pesoText: UILabel!
    @IBOutlet weak var alturaSlider: UISlider!
    @IBOutlet weak var pesoSlider: UISlider!
    
    @IBAction func alturaSliderChange(_ sender: UISlider) {
        let altura = String.init(format: "%.2f", sender.value)
        alturaText.text = "\(altura) m"
    }
    
    @IBAction func pesoSliderChange(_ sender: UISlider) {
        let peso = Int(sender.value)
        pesoText.text = "\(peso) Kg"
    }
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        let altura:Float = alturaSlider.value
        let peso:Float = pesoSlider.value
        
        let bmi:Float = peso / (altura * altura)
        
        print(bmi)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

