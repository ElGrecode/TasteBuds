//
//  ViewController.swift
//  TasteBuds
//
//  Created by Adam Schuld on 9/27/14.
//  Copyright (c) 2014 Design Gumption. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pickerContainer = UIView()
    var picker = UIDatePicker()
    

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signIn(sender: UIButton) {
        println("signIn");
        
        // Disable sign in button to not allow multiple clicks
        self.signInBtn.enabled = false
        self.signUpBtn.enabled = false
       
        // Clear out error message
        var errorMessage = ""
        
        // Check if a password has been entred
        if (self.passwordField.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 0) {
            errorMessage = "Password should not be empty"
        }
        
        if (self.userNameField.text.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 0) {
            errorMessage = "User Name should not be empty"
        }
        
        if (errorMessage.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) != 0) {
            var alert:UIAlertView = UIAlertView(title: "Message", message: errorMessage, delegate: nil, cancelButtonTitle: "Ok")
            
            alert.show()
            
            // Reenable buttons
            self.signInBtn.enabled = true
            self.signUpBtn.enabled = true
        } else { // check if credentials check out
            println("checking credentials")
            
            // Go to recommendations
//            let recvc = RecommendationViewController(nibName: "RecommendationViewController", bundle: nil)
            
            //MBProgressHUD.showHUDAddedTo(self.view, animated:true)
//            PFUser.logInWithUsernameInBackground(self.textfieldUserName.text , password:self.textfieldPassword.text)
//                {
//                    (user: PFUser!, error: NSError!) -> Void in
//                    if (user != nil)
//                    {
//                        self.displayTabs()
//                    }
//                    else
//                    {
//                        if let errorString = error.userInfo?["error"] as? NSString
//                        {
//                            var alert:UIAlertView = UIAlertView(title: "Error", message: errorString, delegate: nil, cancelButtonTitle: "Ok")
//                            
//                            alert.show()
//                        }
//                        
//                        
//                    }
//                    
//                    self.signInButton.enabled = true
//                    self.signUpButton.enabled = true
//                    
//                    MBProgressHUD.hideHUDForView(self.view, animated:false)
//            }
        }

    }
    

    @IBAction func signUp(sender: UIButton) {
    }
}



