//
//  ButtonViewCell.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 12/9/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit
import Material
class ButtonViewCell: UICollectionViewCell {

    @IBOutlet weak var buttonCell: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        let img = UIImage(named: "ic_dashboard")?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        buttonCell.tintColor = UIColor(white:0, alpha:0.54)
        buttonCell.setImage(img, for: .normal)
        // Initialization code
    }

}
