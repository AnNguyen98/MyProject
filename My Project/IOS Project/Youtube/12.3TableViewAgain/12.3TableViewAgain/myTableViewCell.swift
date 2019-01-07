//
//  myTableViewCell.swift
//  12.3TableViewAgain
//
//  Created by An Nguyễn on 3/20/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

   
    @IBOutlet weak var lblTen: UILabel!
    @IBOutlet weak var imgHinh: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
