//
//  UserTableViewCell.swift
//  MVVM 2 API Calling
//
//  Created by IPS MAC OS 2 on 28/09/21.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var CellTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
