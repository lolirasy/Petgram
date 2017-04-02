//
//  LoginTableViewController.swift
//  Instanime
//
//  Created by ភី ម៉ារ៉ាសុី on 10/16/16.
//  Copyright © 2016 ភី ម៉ារ៉ាសុី. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit
import Material
class LoginTableViewController: UITableViewController, FBSDKLoginButtonDelegate {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFacebook: FBSDKLoginButton!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setField(sender: [userName,passWord])
        setButton(sender: [btnLogin,btnFacebook])
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [Color.teal.darken3.cgColor, Color.teal.lighten4.cgColor]
        //view.layer.insertSublayer(gradient, at: 0)
        tableView.backgroundColor = Color.teal.darken2.withAlphaComponent(1)
        btnFacebook.delegate = self
        btnFacebook.readPermissions = ["public_profile", "email", "user_friends"]
       //timer = Timer.scheduledTimer(timeInterval: 3.00, target: self, selector: #selector(LoginTableViewController.randomColor), userInfo: nil, repeats: true)
        
      //  tableView.footerView(forSection: .allZeros)
        
    }
    func randomColor(){
        print("LOL")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error?) {

        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
        FIRAuth.auth()?.signIn(with: credential) { (auser, error) in
            // ...
            if (error == nil){
                let vc2 = HomeViewController(nibName: "HomeViewController", bundle: nil)
                let navigationController = UINavigationController(rootViewController: vc2)
                
                self.present(navigationController, animated: true, completion: {
                    
                })
                
            }else{
            }
        }
        
        // ...
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
        
        return true
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        
        cell.backgroundColor = UIColor.clear
    }
    
    
    func setField(sender: [UITextField]){
        for s in sender{
            s.backgroundColor = UIColor.init(white: 0.95, alpha: 0.1)
            s.layer.cornerRadius = 4
            s.layer.borderWidth = 1
            s.layer.borderColor = UIColor.init(white: 0.95, alpha: 0.1).cgColor
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15,height: s.frame.height))
            s.leftView = paddingView
            s.leftViewMode = UITextFieldViewMode.always
            
        }
        
        
    }
    func setButton(sender: [UIButton]){
        for b in sender{
            b.backgroundColor = UIColor.clear
            b.layer.cornerRadius = 4
            b.layer.borderWidth = 1
            b.layer.borderColor = UIColor.init(white: 0.95, alpha: 0.1).cgColor
            
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func btnCick(sender: UIButton){
        
        
        if( sender == btnLogin){

//            timer.invalidate()
            self.dismiss(animated: false, completion: {
                    
            })
            let vc2 = HomeTabBarController(nibName: "HomeTabBarController", bundle: nil)
           // let navigationController = NavigationController(rootViewController: vc2)
            self.present(vc2, animated: true, completion: {
                
                
            })
        }
        
        
    }
    
    
    
    
}
