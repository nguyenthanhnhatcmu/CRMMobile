//
//  ListActivityTableViewCell.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 6/1/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import UIKit

class ListActivityTableViewCell: UITableViewCell {
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelContent: UILabel!
    @IBOutlet weak var labelLocationDemo: UILabel!
    @IBOutlet weak var imageIconCell: UIImageView!

    @IBOutlet weak var buttonCheckBox: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
