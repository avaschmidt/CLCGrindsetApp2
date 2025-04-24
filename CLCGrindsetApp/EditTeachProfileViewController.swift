//
//  EditTeachProfileViewController.swift
//  CLCGrindsetApp
//
//  Created by AVA SCHMIDT on 4/24/25.
//

import UIKit

class EditTeachProfileViewController: UIViewController {
    @IBOutlet weak var teacherNameOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func enterAction(_ sender: UIButton) {
        
        if teacherNameOutlet.text != ""{
            var teacherName = teacherNameOutlet.text!
        }
        else{
            print("No name inputed")
        }
        
    }
  
    
    
    

}
