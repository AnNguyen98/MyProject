//
//  TableViewCellMe.swift
//  SQLiteAgain
//
//  Created by An Nguyễn on 4/21/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class TableViewCellMe: UITableViewCell {

    @IBOutlet weak var labelIDChim: UILabel!
    @IBOutlet weak var labelTenChim: UILabel!
    @IBOutlet weak var imageChim: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
