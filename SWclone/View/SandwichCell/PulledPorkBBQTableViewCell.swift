//
//  PulledPorkBBQTableViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/16.
//

import UIKit

class PulledPorkBBQTableViewCell: UITableViewCell {

    @IBOutlet weak var pulledporkEng: UILabel!
    @IBOutlet weak var pulledPorkKor: UILabel!
    @IBOutlet weak var pulledporkImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
