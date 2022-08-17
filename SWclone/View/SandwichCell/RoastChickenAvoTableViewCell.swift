//
//  RoastChickenAvoTableViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/15.
//

import UIKit

class RoastChickenAvoTableViewCell: UITableViewCell {

    @IBOutlet weak var roastedchickenavoimg: UIImageView!
    @IBOutlet weak var rcakor: UILabel!
    @IBOutlet weak var rcaeng: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
