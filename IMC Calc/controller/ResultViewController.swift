//
//  ResultViewController.swift
//  IMC Calc
//
//  Created by Bryan Barreto on 22/08/20.
//  Copyright © 2020 Bryan Barreto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    
    var bmiValue:String = "0.0"
    var adviceMessage:String = "erro"
    var color:UIColor = UIColor.white
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue
        messageLabel.text = adviceMessage
        backgroundView.backgroundColor = color
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
