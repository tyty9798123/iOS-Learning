//
//  ImageTestController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/11/4.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class ImageTestController: UIViewController {

    @IBOutlet weak var phoneCallButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // phoneCallButton.imageView?.contentMode = .center
        phoneCallButton.imageView?.contentMode = .scaleAspectFit
    }
    
    @IBAction func phoneCallClicked(_ sender: UIView) {
        
    }
}
