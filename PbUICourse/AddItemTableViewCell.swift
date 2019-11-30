//
//  AddItemTableViewCell.swift
//  PbUICourse
//
//  Created by Swift on 2019/11/21.
//  Copyright © 2019 Swift. All rights reserved.
//

import UIKit

class AddItemTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        nameTextField.delegate = self
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
        let newName = nameTextField.text
        nameTextField.text = ""
        nameTextField.resignFirstResponder()
        print(newName)
    }
    
}
