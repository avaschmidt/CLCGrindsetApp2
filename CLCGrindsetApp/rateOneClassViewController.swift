//
//  rateOneClassViewController.swift
//  CLCGrindsetApp
//
//  Created by PETER MICKLE on 4/21/25.
//

import UIKit

class ratingTableCell : UITableViewCell {
    
    
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    @IBOutlet weak var ratingSC: UISegmentedControl!
    
    
}





//class rateOneClassViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
//    
//    
//    var ratingCatagories = ["Difficulty", "fun", ""]
//    
//    @IBOutlet weak var titleOutletOneRate: UILabel!
//    
//    
//    @IBOutlet weak var rateOneTableViewOutlet: UITableView!
//    
//    override func viewDidLoad() {
//        
//        super.viewDidLoad()
//        
//        if let name = AppData.courseToRate?.courseName {
//            titleOutletOneRate.text = "Please Rate \(name)"
//        }else{
//            titleOutletOneRate.text = "no class to Rate!"
//        }
//        
//        // Do any additional setup after loading the view.
//    }
//    
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        4
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
