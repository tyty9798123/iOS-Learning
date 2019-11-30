//
//  AddItemTableViewCell.swift
//  PbUICourse
//
//  Created by Swift on 2019/11/21.
//  Copyright © 2019 Swift. All rights reserved.
//

import UIKit

public protocol AddItemTableViewCellDelegate : NSObjectProtocol{
    func addItem(newName: String)
}

class AddItemTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    weak open var delegate: AddItemTableViewCellDelegate?

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
        if let newName = nameTextField.text{
            /*
            if let tablecviewController = self.delegate{
                tablecviewController.addItem(newName: newName)
            }*/
            
            self.delegate?.addItem(newName: newName)
        }
        nameTextField.text = ""
        nameTextField.resignFirstResponder()
    }
    
}
