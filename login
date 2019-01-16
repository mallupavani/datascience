 loginViewController.swift
//  LoginScreen
//
//  Created by Hemita Pathak on 13/07/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//
import UIKit

class loginViewController: UIViewController {
    
    
    //MARK : Properties
    
    @IBOutlet weak var login: UILabel!
    
    @IBOutlet weak var txtusername: UITextField!
    
    
    @IBOutlet weak var txtpassword: UITextField!
    
    
    @IBOutlet weak var signin: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
       /* login.center.x  += view.bounds.width
        txtusername.center.x  -= view.bounds.width
        txtpassword.center.x -= view.bounds.width */
        login.alpha = 0.5
        txtusername.alpha = 0.5
        txtpassword.alpha = 0.5
        //signin.alpha = 0.0
        signin.transform = CGAffineTransformMakeScale(0.0, 0.0)
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        //title will appear smooth to the screen.
        
     //   UIView.animateWithDuration(0.3, animations: {
       //     self.login.center.x += self.view.bounds.width
           // self.txtusername.center.x += self.view.bounds.width
       // })
        
       /* UIView.animateWithDuration( 1.5, delay: 0.5, usingSpringWithDamping: 0.3,
                                   initialSpringVelocity: 0.5,  options: [], animations: {self.txtusername.center.x -= self.view.bounds.width} , completion: nil)
        
        UIView.animateWithDuration(1.5, delay: 0.5, options: [], animations: {self.txtpassword.center.x += self.view.bounds.width} , completion: nil) */
        
        //alpha for the fade in fade out effect
        
        UIView.animateWithDuration(0.5, delay: 0.5,options: [],animations: {self.login.alpha = 1.0}, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.5,options: [],animations: {self.txtusername.alpha = 1.0}, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.5,options: [],animations: {self.txtpassword.alpha = 1.0}, completion: nil)
        
       // UIView.animateWithDuration(0.5, delay: 1.0,options: [],animations: {self.signin.alpha = 1.0}, completion: nil)
        
        //transform will show transformed size according to the co-ordinate value.
        
        UIView.animateWithDuration(0.5, delay: 0.5,options: [],animations: {self.signin.transform = CGAffineTransformMakeScale(1, 1)}, completion: nil)
        
    }
    
    
    //MARK : Actions
    
    
    @IBAction func forgotPassword(sender: UIButton) {
        
        self.performSegueWithIdentifier("forgotpaswd", sender: self)
        
        
    }
    
    
    @IBAction func signintapped(sender: UIButton) {
    }
    
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
