//
//  SecondViewController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/10/28.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissViewControllerByButton(_ sender: UIButton) {
        dismiss(animated: true) {
            print("dismissViewControllerByButton success")
        }
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
