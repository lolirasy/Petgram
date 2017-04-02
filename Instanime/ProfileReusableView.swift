//
//  ProfileReusableView.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 12/4/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit
import Material

class ProfileReusableView: UICollectionReusableView, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    let myIcon = ["ic_dashboard","ic_view_list","ic_explore","ic_assignment_ind"]
    
    
    
    @IBOutlet weak var labelFollowing: UILabel!
    @IBOutlet weak var labelFollower: UILabel!
    @IBOutlet weak var labelPost: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = Color.grey.lighten3
    collectionView.register(UINib(nibName: "ButtonViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        imageView.layer.cornerRadius = 35
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "Me")
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.layer.borderWidth = 1
        self.collectionView.layer.borderColor = Color.grey.lighten4.cgColor
        setLabel(name: "Hippo Jayce", status: "I hate a lot of thing this is text this is text this is text this is text this is text")
        setAttLabel(label: labelPost, string: "Posts", num: "124")
        setAttLabel(label: labelFollower, string: "Followers", num: "124")
        setAttLabel(label: labelFollowing, string: "Following", num: "122")
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4;
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ButtonViewCell
        let img = UIImage(named: myIcon[indexPath.item])?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        
        cell.buttonCell.tintColor = UIColor(white:0, alpha:0.54)
        cell.buttonCell.tag = indexPath.row
        cell.buttonCell.setImage(img, for: .normal)
        cell.buttonCell.addTarget(self, action: #selector(ProfileReusableView.btnClick(sender:)), for: .touchUpInside)
        
        return cell
    }
    func btnClick(sender: UIButton){
        switch sender.tag {
        case 0:
            
            break
        case 1:
            break
        default:
            break
        }
    }
    func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/4, height: collectionView.frame.height)
    }
    
    func setLabel(name: String, status: String){
        nameLabel.text = name
        statusLabel.numberOfLines = 2
        statusLabel.textAlignment = .center
        statusLabel.text = status
    }
    func setAttLabel(label: UILabel, string: String, num: String){
        label.numberOfLines = 2
        let attrText = NSMutableAttributedString(string: num, attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 16)])
        attrText.append(NSAttributedString(string: "\n"+string,attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 10), NSForegroundColorAttributeName: UIColor.lightGray]))
        
        label.textAlignment = .center
        label.attributedText = attrText
    }
    
  

}
