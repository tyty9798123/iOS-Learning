//
//  ImageTestController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/11/4.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class ImageTestController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func imageClicked(_ sender: UIButton) {
        if let superView = sender.superview {
            superView.alpha = 0.5
            UIView.animate(withDuration: 0.1){
                superView.alpha = 1
            }
        }
    }
    
}
