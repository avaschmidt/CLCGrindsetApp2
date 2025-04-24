//
//  newAccountViewController.swift
//  CLCGrindsetApp
//
//  Created by DANIEL HUSEBY on 4/23/25.
//

import UIKit

class newAccountViewController: UIViewController {

    
    @IBOutlet weak var userNameOutlet: UITextField!
    
    
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        }else{
            print("User has been already added.")
        }
        
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
