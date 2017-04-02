//
//  NotificationTableViewController.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 3/2/17.
//  Copyright © 2017 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit

class NotificationTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "NotificationTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
      
        let frame: CGRect = tableView.frame
        
        
        let FollowingButton: UIButton = UIButton(frame: CGRect(x: 4, y: 10, width: (tableView.frame.width/2) - 5, height: 30))
        FollowingButton.setTitle("Following", for: .normal)
        FollowingButton.backgroundColor = UIColor.clear
        
        let FollowerButton: UIButton = UIButton(frame: CGRect(x: (FollowingButton.frame.width) + 6, y: 10, width: (tableView.frame.width/2) - 5, height: 30))
        FollowerButton.setTitle("Follower", for: .normal)
        FollowerButton.backgroundColor = UIColor.clear
        setButtonLayer(sender: FollowingButton)
        setButtonLayer(sender: FollowerButton)
        
        
        let headerView: UIView = UIView(frame: CGRect(x: 0, y: 5,width: frame.size.width, height: frame.size.height))
        headerView.backgroundColor = UIColor.white
        headerView.addSubview(FollowingButton)
        headerView.addSubview(FollowerButton)
        return headerView
        
    }
    func setButtonLayer(sender: UIButton){
        sender.setTitleColor( UIColor.black, for: .normal)
        sender.layer.borderWidth = 1
        sender.layer.cornerRadius = 15
        sender.layer.borderColor = UIColor.black.cgColor
        
    }
    
    func buttonTapped(sender: UIButton){
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    
}
