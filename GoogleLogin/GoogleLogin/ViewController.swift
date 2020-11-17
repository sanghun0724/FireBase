//
//  ViewController.swift
//  GoogleLogin
//
//  Created by sangheon on 2020/11/17.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {
    
    @IBOutlet var signInButton:GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if GIDSignIn.sharedInstance()?.currentUser != nil {
            //signed in
            
        }
        else {
            GIDSignIn.sharedInstance()?.signIn()
        }
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
    }


}

