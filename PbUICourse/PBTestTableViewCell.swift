//
//  PBTestTableViewCell.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/11/24.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class PBTestTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
