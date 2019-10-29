//
//  SecondViewController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/10/28.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var counterLabel: UILabel!
    
    let initValue: Double = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper1.stepValue = 0.3
        stepper1.value = initValue
        stepper1.maximumValue = 3
        stepper1.minimumValue = -1
            counterLabel.text = "\(roundStepperValue())"
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func stepperClicked(_ sender: UIStepper) {
        counterLabel.text = "\(roundStepperValue())"
    }
    
    @IBAction func resetButtonClicked(_ sender: UIStepper) {
        stepper1.value = initValue
        counterLabel.text = "\(roundStepperValue())"
    }
    
    func roundStepperValue() -> Double{
        return round(stepper1.value * 10) / 10
    }
    
}
