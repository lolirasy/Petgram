//
//  ProfileViewController.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 12/4/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit
import Material
import HidingNavigationBar
private let reuseIdentifier = "Cell"
private let reuseIdentifier2 = "Cell2"

private var StyleCell = 0

class ProfileViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    var hidingNavBarManager: HidingNavigationBarManager?
    

    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
    
        
        
        let nib = UINib(nibName: "ProfileReusableView", bundle: nil)
        self.collectionView?.register(nib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "MyHeader")
        
        
        self.navigationController?.navigationBar.barTintColor = Color.grey.lighten3
        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 37)
        self.navigationController?.navigationBar.clipsToBounds = true
        self.navigationController?.navigationBar.isTranslucent = false
        
        
        
        self.collectionView?.backgroundColor = UIColor.white

        self.collectionView?.register(UINib(nibName: "ProfileCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView?.register(ProfileHorizonCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier2)
        
        let button1 = UIBarButtonItem(image: UIImage(named: "ic_person_add"), style: .plain, target: self, action: #selector(getter: UIDynamicBehavior.action)) // action:#selector(Class.MethodName) for swift 3
        
        let button2 = UIBarButtonItem(image: UIImage(named: "ic_more_horiz"), style: .plain, target: self, action: #selector(getter: UIDynamicBehavior.action)) // action:#selector(Class.MethodName) for swift 3
        
        navigationItem.leftBarButtonItem = button2
        navigationItem.rightBarButtonItem = button1
        hidingNavBarManager = HidingNavigationBarManager(viewController: self, scrollView: collectionView!)
        
    
    
    }

    override func viewWillAppear(_ animated: Bool) {
        hidingNavBarManager?.viewWillAppear(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
      
        return (self.collectionView?.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "MyHeader", for: indexPath))!
        
    }
    

    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        collectionView?.collectionViewLayout.invalidateLayout()
        
    }
    
    
    func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if StyleCell == 0 {
            return CGSize(width: ((self.collectionView?.frame.width)! / 3 ) - 1, height: ((self.collectionView?.frame.width)! / 3 ) - 1)
        }
        else {
            return CGSize(width: view.frame.width-15, height: 406)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if StyleCell == 0 {
        return 1
        }
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if StyleCell == 0 {
        return 0
        }
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12;
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProfileCollectionViewCell
        cell.imageView.image = UIImage(named: "Rem")
        
        return cell
    }
    
    
    func SwitchCell(tag: Int){
        StyleCell = tag
    }
    
    
    
    
    
    
    
    
    
    
    
  
}
