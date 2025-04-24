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
    
    var students = [Student]()
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameOutlet.delegate = self
        passwordOutlet.delegate = self
        AppData.ref = Firestore.firestore().collection("data").document("Accounts")
        
        AppData.ref.addSnapshotListener { documentSnapshot, error in
                guard let document = documentSnapshot else {
                  print("Error fetching document: \(error!)")
                  return
                }
                guard let data = document.data() else {
                  print("Document data was empty.")
                  return
                }
            
            AppData.usernames.removeAll()
            AppData.passwords.removeAll()
            
            for key in data.keys{
                    let dataArray = data[key] as! [String : Any]
                    let uncodedAccount = Student(dict: dataArray)
                self.students.append(uncodedAccount)
                AppData.usernames.append(uncodedAccount.username)
                AppData.passwords.append(uncodedAccount.password)
            }
            
            
              }

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitAction(_ sender: Any) {
    
    
        let enteredUsername = usernameOutlet.text!
        let enteredPassword = passwordOutlet.text!
        
        var userFound = false
        var userIndex = -1
        for username in AppData.usernames{
            if enteredUsername == username{
                userFound = true
                userIndex = AppData.usernames.firstIndex(of: enteredUsername) ?? -1
                break
            }
        }
        
        if userFound && userIndex != -1{
            if enteredPassword == AppData.passwords[userIndex]{
                AppData.currentStudent = students[userIndex]
                performSegue(withIdentifier: "loginSuccess", sender: self)
            }
        }
    }
    
    
    
    
    @IBAction func newAccountAction(_ sender: Any) {
    performSegue(withIdentifier: "newAccount", sender: self)
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
