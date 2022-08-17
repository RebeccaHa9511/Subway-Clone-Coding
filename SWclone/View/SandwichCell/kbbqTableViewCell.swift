//
//  kbbqTableViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/16.
//

import UIKit

class kbbqTableViewCell: UITableViewCell {

    @IBOutlet weak var kbbqEng: UILabel!
    @IBOutlet weak var kbbqKor: UILabel!
    @IBOutlet weak var kbbqimg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
