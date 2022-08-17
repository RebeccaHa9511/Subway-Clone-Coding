//
//  CustomTableViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/15.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var veggieAvocado: UIImageView!
    @IBOutlet weak var veggoeAvoKorean: UILabel!
    @IBOutlet weak var veggieAvoEng: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

 
    }




}



