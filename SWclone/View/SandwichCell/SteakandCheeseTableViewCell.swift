//
//  SteakandCheeseTableViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/16.
//

import UIKit

class SteakandCheeseTableViewCell: UITableViewCell {

    @IBOutlet weak var steakAndCheeseEng: UILabel!
  
    @IBOutlet weak var steakAndCheeseKor: UILabel!
    @IBOutlet weak var steakandcheeseimg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
