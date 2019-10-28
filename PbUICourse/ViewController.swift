//
//  ViewController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/10/17.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0;
    //@IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //counterLabel.text = "\(counter)"
    }

    /*
    @IBAction func plusOne(_ sender: UIButton) {
        /*
        第一種寫法：
        if let number = counterLabel.text {
            if var intNumber = Int(number) {
                intNumber += 1;
                counterLabel.text = "\(intNumber)"
            }
        }
        */
        counter += 1
        counterLabel.text = "\(counter)"
    }
    
    
    @IBAction func minusOne(_ sender: UIButton) {
        counter -= 1
        counterLabel.text = "\(counter)"
    }
    
    @IBAction func resetCounter(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
    }
    */
}
