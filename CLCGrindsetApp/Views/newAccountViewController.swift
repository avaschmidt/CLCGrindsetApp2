//
//  newAccountViewController.swift
//  CLCGrindsetApp
//
//  Created by DANIEL HUSEBY on 4/23/25.
//

import UIKit

class newAccountViewController: UIViewController, UITextFieldDelegate {
    
    static var createdNew = false

    
    @IBOutlet weak var userNameOutlet: UITextField!
    
    
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameOutlet.delegate = self
        passwordOutlet.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func createAction(_ sender: Any) {
    var username = userNameOutlet.text!
        var password = passwordOutlet.text!
        var userFound = false
        for usernameHi in AppData.usernames{
            if username.lowercased() == usernameHi.lowercased(){
                userFound = true
                break
            }
        }
        
        if (!userFound){
            var newStudent = Student(username: username, password: password, gradeLevel: 0, selectedClasses: [String](), name: username, age: 0)
            newStudent.addToFirebase(docRef: AppData.ref)
            AppData.currentStudent = newStudent
            AppData.saveUserAndPass()
            
            newAccountViewController.createdNew = true
            self.navigationController?.popViewController(animated: false)
            
            
        }else{
            createAlert(alertTitle: "Error", alertDesc: "Username already exists.")
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameOutlet.resignFirstResponder(); passwordOutlet.resignFirstResponder();
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
