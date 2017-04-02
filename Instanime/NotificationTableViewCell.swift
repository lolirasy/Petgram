//
//  NotificationTableViewCell.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 12/12/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit
import Material
class NotificationTableViewCell: UITableViewCell {

    
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var proImage: UIImageView!
    @IBOutlet weak var likeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        proImage.layer.cornerRadius = proImage.frame.size.height / 2
        proImage.layer.masksToBounds = true
        proImage.image = UIImage(named: "Me")
        likeImage.image = UIImage(named: "Rem")
        durationLabel.text = "2hr"
        durationLabel.textColor = Color.grey.lighten3
        nameLabel.text = "Rasy Jayce"
        
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
