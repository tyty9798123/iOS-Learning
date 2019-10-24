//
//  ViewController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/10/17.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var btn1: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("View controller view Did Load")
        
        label1.text = "Progress Bar iOS Swift"
        btn1.setTitle("系統確認中...請稍等", for: .disabled)
    }

    @IBAction func btn1Clicked(_ sender: UIButton) {
        print("Clicked1")
        btn1.isEnabled = false

    }
    
}

