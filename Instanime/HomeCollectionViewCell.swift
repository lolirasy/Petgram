//
//  HomeCollectionViewCell.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 10/18/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//


import UIKit
import Material
class HomeCollectionViewCell: UICollectionViewCell{
    
    
    
    let titleLabel: UILabel = {

        let label = UILabel()
        
       label.numberOfLines = 2
        let attrText = NSMutableAttributedString(string: "Rasy Igneel", attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 18)])
        attrText.append(NSAttributedString(string: "\nMonday, August 29,2016",attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 10), NSForegroundColorAttributeName: UIColor.lightGray]))
        
        let paraStyle = NSMutableParagraphStyle()
        paraStyle.lineSpacing = 4
        
        attrText.addAttribute(NSParagraphStyleAttributeName, value: paraStyle,range: NSMakeRange(0,attrText.string.characters.count))
        
        label.attributedText = attrText
        return label
    }()
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Me")
        imageView.layer.cornerRadius = 22
        
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    let statusLabel: UILabel = {
        
        let label  = UILabel()
        label.textColor = UIColor.lightGray
        label.text = "Hope begins in the dark, the stubborn hope that if you just"+"\n show up and try to do the right thing, the da…"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        return label
        
    }()
    
    let dividerLineView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        return view
        
    }()
    
    let Line : UIView = {
        
        let view = UIView()
        
        view.backgroundColor = Color.grey.darken1
        return view
        
    }()
    let petPaw: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_pets")
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    let titleImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Background")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.isUserInteractionEnabled = true
        
        return imageView
    }()
    
    let loveButton: UIButton = {
        let button = UIButton()
        button.setTitle("123 likes", for: UIControlState())
        button.setTitleColor(UIColor.lightGray, for: UIControlState())
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setImage(UIImage(named: "ic_pets_18pt"), for: .normal)
        button.setImage(UIImage(named: "btn_like_non"), for: .highlighted)
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 8, 0, 0)
        return button
    }()
    let commentButton: UIButton = {
        let button = UIButton()
        button.setTitle("10 Comments", for: UIControlState())
        button.setTitleColor(UIColor.lightGray, for: UIControlState())
        button.setImage(UIImage(named: "ic_chat_bubble_outline_18pt"), for: .normal)
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 8, 0, 0)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        return button
    }()
    let shareButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "Share"), for: .normal)
        return button;
    }()
    
    func onDoubleTap(){
        petPaw.isHidden = false
        petPaw.alpha = 1.0
        
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: [], animations: {
            
            self.petPaw.alpha = 0
            
        }, completion: {
            (value:Bool) in
            
            self.petPaw.isHidden = true
        })
    }
    
    override func layoutSubviews() {
        
        
        
        let gesture = UITapGestureRecognizer(target: self, action:#selector(HomeCollectionViewCell.onDoubleTap))
        gesture.numberOfTapsRequired = 2
        self.contentView.layer.cornerRadius = 5.0
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true;
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width:0,height: 2.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false;
        self.layer.shadowPath = UIBezierPath(roundedRect:self.bounds, cornerRadius:self.contentView.layer.cornerRadius).cgPath
        self.layer.cornerRadius = 5
        backgroundColor = UIColor.white
        
        petPaw.frame = CGRect(x: contentView.frame.midX - 25, y: contentView.frame.midY - 125, width: 50, height: 50)
        
        petPaw.isHidden = true
        
        
        addSubview(titleLabel)
        addSubview(profileImageView)
        addSubview(titleImage)
        addSubview(statusLabel)
        addSubview(loveButton)
        addSubview(commentButton)
        addSubview(dividerLineView)
        addSubview(shareButton)
        
        titleImage.addSubview(petPaw)
        //        let width = frame.size.width
        self.titleImage.addGestureRecognizer(gesture)
        
        
        addConstraintsWithFormat("H:|-16-[v0]-16-|", views: dividerLineView)
        addConstraintsWithFormat("H:|-16-[v0(44)]-8-[v1]|", views: profileImageView, titleLabel)
        addConstraintsWithFormat("H:|-16-[v0]-8-|", views: statusLabel)
        addConstraintsWithFormat("H:|[v0]|", views: titleImage)
        addConstraintsWithFormat("H:|-8-[v0(100)]-5-[v1(120)]-16-[v2]", views: loveButton,commentButton,shareButton)
        addConstraintsWithFormat("V:|-6-[v0]", views: titleLabel)
        addConstraintsWithFormat("V:|-4-[v0(44)]-4-[v1(240.67)]-8-[v2]-8-[v3(0.8)]-16-[v4(16)]-16-|", views: profileImageView,titleImage,statusLabel,dividerLineView,loveButton)
        addConstraintsWithFormat("V:[v0(16)]-16-|", views: commentButton)
        addConstraintsWithFormat("V:[v0(16)]-16-|", views: shareButton)

    }
    
}
extension UIView{
    func addConstraintsWithFormat(_ format: String, views: UIView...){
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated(){
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
}


