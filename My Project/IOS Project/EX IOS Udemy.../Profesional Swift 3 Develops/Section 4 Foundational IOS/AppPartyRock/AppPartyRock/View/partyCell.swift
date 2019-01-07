//
//  partyCell.swift
//  AppPartyRock
//
//  Created by An Nguyễn on 4/9/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit

class partyCell: UITableViewCell {

    
    @IBOutlet weak var imageVideo: UIImageView!
    @IBOutlet weak var VideoTitle: UILabel!
    
    func UpdateUI(partyRock:PartyRock){
        VideoTitle.text = partyRock.titleVideo
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
