//
//  MyTableViewCell.swift
//  ChuyenManHinh
//
//  Created by An Nguyễn on 3/18/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var lblKhoaHoc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}