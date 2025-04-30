//  Created by AVA SCHMIDT on 4/17/25.

import UIKit

class periodClicked {
    static var selectedPeriod = 0
}

class MakeScheduleViewController: UIViewController {
    
    @IBOutlet weak var period1Class: UILabel!
    
    @IBOutlet weak var period2Class: UILabel!
    
    @IBOutlet weak var period3Class: UILabel!
    
    @IBOutlet weak var period4Class: UILabel!
    
    @IBOutlet weak var period5Class: UILabel!
    
    @IBOutlet weak var period6Class: UILabel!
    
    @IBOutlet weak var period7Class: UILabel!
    
    @IBOutlet weak var period8Class: UILabel!
    
    @IBOutlet weak var period9Class: UILabel!
    
    
    @IBAction func edit1Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 1
    }
    
    @IBAction func edit2Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 2

    }
    
    @IBAction func edit3Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 3

    }
    
    @IBAction func edit4Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 4

    }
    
    @IBAction func edit5Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 5

    }
    
    @IBAction func edit6Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 6

    }
    
    @IBAction func edit7Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 7

    }
    
    @IBAction func edit8Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 8

    }
    
    @IBAction func edit9Action(_ sender: UIButton) {
        performSegue(withIdentifier: "showSubjects", sender: nil)
        periodClicked.selectedPeriod = 9

    }
    
    /*override func viewDidAppear(_ animated: Bool) {
        /*AppData.studentSchedule = ["\(period1Class.text!)", "\(period2Class.text!)", "\(period3Class.text!)", "\(period4Class.text!)", "\(period5Class.text!)", "\(period6Class.text!)", "\(period7Class.text!)", "\(period8Class.text!)", "\(period9Class.text!)"]*/
    }*/
    
    override func viewDidLoad() {
        period1Class.text = AppData.studentSchedule[0]
        period2Class.text = AppData.studentSchedule[1]
        period3Class.text = AppData.studentSchedule[2]
        period4Class.text = AppData.studentSchedule[3]
        period5Class.text = AppData.studentSchedule[4]
        period6Class.text = AppData.studentSchedule[5]
        period7Class.text = AppData.studentSchedule[6]
        period8Class.text = AppData.studentSchedule[7]
        period9Class.text = AppData.studentSchedule[8]

        
        
        /*period1Class.text = AppData.studentSchedule[0]
        period2Class.text = AppData.studentSchedule[1]
        period3Class.text = AppData.studentSchedule[2]
        period4Class.text = AppData.studentSchedule[3]
        period5Class.text = AppData.studentSchedule[4]
        period6Class.text = AppData.studentSchedule[5]
        period7Class.text = AppData.studentSchedule[6]
        period8Class.text = AppData.studentSchedule[7]
        period9Class.text = AppData.studentSchedule[8]*/
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // use save changes for student class (avoid add to firebase)
       
            
        /*period1Class.text = AppData.studentSchedule[0]
        period2Class.text = AppData.studentSchedule[1]
        period3Class.text = AppData.studentSchedule[2]
        period4Class.text = AppData.studentSchedule[3]
        period5Class.text = AppData.studentSchedule[4]
        period6Class.text = AppData.studentSchedule[5]
        period7Class.text = AppData.studentSchedule[6]
        period8Class.text = AppData.studentSchedule[7]
        period9Class.text = AppData.studentSchedule[8]*/
        
        
    }
    
    
    
    
    
    
    

}
