//
//  AddItemTableViewCell.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/11/25.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class AddItemTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var nameTextFiled: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameTextFiled.delegate = self;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return false
    }
    
    @IBAction func addItem(_ sender: UIButton) {
        let newName = nameTextFiled.text
        nameTextFiled.text = ""
        nameTextFiled.resignFirstResponder()
    }
}
