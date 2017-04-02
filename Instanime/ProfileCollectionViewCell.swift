//
//  ProfileCollectionViewCell.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 12/4/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.contentMode = .scaleAspectFit
        // Initialization code
    }

}
