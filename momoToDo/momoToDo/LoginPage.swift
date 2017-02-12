//
//  LoginPage.swift
//  momoToDo
//
//  Created by Mohammad Al-Ahdal on 2017-02-10.
//  Copyright © 2017 Mohammad Al-Ahdal. All rights reserved.
//
import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import GoogleSignIn

let authBot: FIRAuth? = FIRAuth.auth()
var localUser:FIRUser!

class LoginPage : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        //called whenever swag happens and you gotta close stuff, ya feels?
        //MOMO CODE!
    }
    
    func login (withEmail:String, withPassword:String){
        
        authBot?.signIn(withEmail: withEmail, password: withPassword, completion: {(user, error) in
        
            if user != nil {
                localUser = user!
            }
            
        })
    }
    
    func login (withGoogleInfo:String, withGooglePassword:String){
        
    }
    func login (withFacebookInfo:String, withPassword:String){
        //login with facebook ~~~ LEARN FACEBOOK LOGINS
    }
    func login (anonymity:Bool){
        //login with anon ~~~ LEARN ANON
    }
}
