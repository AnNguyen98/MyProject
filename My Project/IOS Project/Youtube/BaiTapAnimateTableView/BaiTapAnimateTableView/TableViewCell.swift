//
//  TableViewCell.swift
//  BaiTapAnimateTableView
//
//  Created by An Nguyễn on 3/29/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imagePhone: UIImageView!
    @IBOutlet weak var imageXe: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected{
            let xXe:CGFloat = imageXe.frame.origin.x
            self.imageXe.frame.origin.x = xXe + self.imageXe.frame.width + 10
            self.imagePhone.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.lblText.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
            UIView.animate(withDuration: 0.5) {
                self.imagePhone.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.lblText.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.imageXe.frame.origin.x = xXe
                UIView.animate(withDuration: 1, animations: {
                    self.imageXe.layoutSubviews()
                })
            }
        
        // Configure the view for the selected state
        }
        
    }

}
