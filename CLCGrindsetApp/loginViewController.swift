//
//  loginViewController.swift
//  CLCGrindsetApp
//
//  Created by DANIEL HUSEBY on 4/22/25.
//

import UIKit

class loginViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var usernameOutlet: UITextField!
    
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameOutlet.delegate = self
        passwordOutlet.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameOutlet.resignFirstResponder(); passwordOutlet.resignFirstResponder();
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
