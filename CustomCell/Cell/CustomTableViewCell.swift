//
//  CustomTableViewCell.swift
//  CustomCell
//
//  Created by Maze Geek on 7/12/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var partImage: UIImageView!
    
    
    @IBOutlet weak var partTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
