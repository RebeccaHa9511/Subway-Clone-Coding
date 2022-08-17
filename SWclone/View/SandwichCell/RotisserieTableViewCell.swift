//
//  RotisserieTableViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/15.
//

import UIKit

class RotisserieTableViewCell: UITableViewCell {

    @IBOutlet weak var rotisserieEng: UILabel!
    @IBOutlet weak var rotiserriekor: UILabel!
    @IBOutlet weak var rotisserieimg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
