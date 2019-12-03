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
        self.title = "ImageTest"
    }
    
    @IBAction func imageClicked(_ sender: UIButton) {
        if let superView = sender.superview {
            superView.alpha = 0.5
            UIView.animate(withDuration: 0.1){
                superView.alpha = 1
            }
        }
    }
    
    @IBAction func goBackToRootViewController(_ sender: UIButton) {
        // popViewController 回到上一層 = back
        //self.navigationController?.popViewController(animated: true)
        // 直接跳回 root
        // 第一種方法
        // self.navigationController?.popToViewController(self.navigationController!.viewControllers[0],animated: true)
        // 第二種方法
        self.navigationController?.popToRootViewController(animated: true)
    }
}
