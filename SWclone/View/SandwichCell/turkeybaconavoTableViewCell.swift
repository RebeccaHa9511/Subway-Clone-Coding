//
//  turkeybaconavoTableViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/15.
//

import UIKit

class turkeybaconavoTableViewCell: UITableViewCell {

    @IBOutlet weak var tbaeng: UILabel!
    @IBOutlet weak var tbakor: UILabel!
    @IBOutlet weak var tbaimg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
