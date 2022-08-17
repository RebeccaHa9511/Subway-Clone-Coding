//
//  SandwichCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/16.
//

import UIKit

class SandwichCell: UITableViewCell {

    @IBOutlet weak var sandwichImageView: UIImageView!
    @IBOutlet weak var sandwichEngNameLabel: UILabel!
    @IBOutlet weak var sandwichNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
