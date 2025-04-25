//
//  loginViewController.swift
//  CLCGrindsetApp
//
//  Created by DANIEL HUSEBY on 4/22/25.
//

import UIKit
import FirebaseCore
import FirebaseFirestore

class loginViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var usernameOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameOutlet.delegate = self
        passwordOutlet.delegate = self
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitAction(_ sender: Any) {
    
    
        let enteredUsername = usernameOutlet.text!
        let enteredPassword = passwordOutlet.text!
        
        var userFound = false
        var userIndex = -1
        for username in AppData.usernames{
            if enteredUsername.lowercased() == username.lowercased(){
                userFound = true
                userIndex = AppData.usernames.firstIndex(of: username) ?? -1
                break
            }
        }
        
        if userFound && userIndex != -1{
            if enteredPassword == AppData.passwords[userIndex]{
                AppData.currentStudent = AppData.students[userIndex]
                AppData.saveUserAndPass()
                performSegue(withIdentifier: "loginSuccess", sender: self)
            }else{
                createAlert(alertTitle: "Incorrect", alertDesc: "Username or password incorrect or nonexistent")
            }
        }else{
            createAlert(alertTitle: "Incorrect", alertDesc: "Username or password incorrect or nonexistent")
        }
    }
    
    
    
    
    @IBAction func newAccountAction(_ sender: Any) {
    performSegue(withIdentifier: "newAccount", sender: self)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameOutlet.resignFirstResponder(); passwordOutlet.resignFirstResponder();
        return true
    }
    
    func createAlert(alertTitle: String, alertDesc: String){
            let alert = UIAlertController(title: alertTitle, message: alertDesc, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
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
