//
//  HomeTabBarController.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 11/8/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit
import FontAwesome_swift
import Material
class HomeTabBarController:  BottomNavigationController{

    @IBOutlet var mytabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        let tabOne = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: tabOne)
        
      
        let homeBar = navigationController
        let tabOneBarItem = UITabBarItem(title: "Home", image: Icon.home, tag: 1)
        homeBar.tabBarItem = tabOneBarItem
        let controller = [homeBar]
        self.viewControllers = controller
        
        
        let tabTwo = NotificationTableViewController(nibName: "NotificationTableViewController", bundle: nil)
        let navigationController3 = UINavigationController(rootViewController: tabTwo)
        let notiBar = navigationController3
        let tabThreeBarItem = UITabBarItem(title: "Notifcation",image: UIImage(named: "ic_pets"),tag:2)
        tabTwo.tabBarItem = tabThreeBarItem
        
        let tabThree = ProfileViewController(nibName: "ProfileViewController",bundle: nil)
        let navigationController2 = UINavigationController(rootViewController: tabThree)
        let proBar = navigationController2

        let tabThreeBarItem2 = UITabBarItem(title: "Profile", image: UIImage(named: "ic_portrait") , tag: 3)
        
        tabThree.tabBarItem = tabThreeBarItem2
        
        
        self.viewControllers = [homeBar, notiBar ,proBar]

        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        // Dispose of any resources that can be recreated.
    }
    func tabBarController(_ tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        
        
        
        
    }
    /*
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
