//
//  TableViewCellMe.swift
//  dbWebservice
//
//  Created by An Nguyễn on 4/5/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class TableViewCellMe: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var imageHih: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
