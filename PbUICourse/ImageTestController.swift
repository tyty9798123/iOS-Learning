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
    
    @IBAction func imageViewClicked(_ sender: UITapGestureRecognizer) {
        print("imageClicked")
        print("\(sender.view)")
        // sender.view = imageView
        print("\(sender.state == .ended)") //return true
        // ended = 按完了
    }
}
