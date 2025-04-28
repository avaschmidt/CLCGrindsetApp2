//
//  rateOneClassViewController.swift
//  CLCGrindsetApp
//
//  Created by PETER MICKLE on 4/21/25.
//

import UIKit







class rateOneClassViewController: UIViewController{
    
    
    
    
    
    @IBOutlet weak var titleOutletOneRate: UILabel!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let name = AppData.courseToRate?.courseName {
            titleOutletOneRate.text = "Please Rate \(name)"
        }else{
            titleOutletOneRate.text = "no class to Rate!"
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
        
        
    }
    
    
    @IBAction func funSC(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        
        for i in 0...selectedIndex{
            sender.setImage(UIImage(systemName: "star.fill"), forSegmentAt: i)
        }
        if selectedIndex != 4{
            for i in selectedIndex+1...4{
                sender.setImage(UIImage(systemName: "star"), forSegmentAt: i)
            }
        }
        AppData.courseToRate?.totalFunRank.append(Double(selectedIndex))
        AppData.courseToRate?.numberOfFunRank += 1
    }
    
    
    
    @IBAction func difSC(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        
        for i in 0...selectedIndex{
            sender.setImage(UIImage(systemName: "star.fill"), forSegmentAt: i)
        }
        if selectedIndex != 4{
            for i in selectedIndex+1...4{
                sender.setImage(UIImage(systemName: "star"), forSegmentAt: i)
            }
        }
        AppData.courseToRate?.totalDifficultyRank.append(Double(selectedIndex))
        AppData.courseToRate?.numberOfDifficultyRank += 1
    }
    
   
    @IBAction func useSC(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        
        for i in 0...selectedIndex{
            sender.setImage(UIImage(systemName: "star.fill"), forSegmentAt: i)
        }
        if selectedIndex != 4{
            for i in selectedIndex+1...4{
                sender.setImage(UIImage(systemName: "star"), forSegmentAt: i)
            }
        }
        AppData.courseToRate?.totalUsefulnessRank.append(Double(selectedIndex))
        AppData.courseToRate?.numberOfUsefulnessRank += 1
    }
    
    
    
    @IBAction func workSC(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        
        for i in 0...selectedIndex{
            sender.setImage(UIImage(systemName: "star.fill"), forSegmentAt: i)
        }
        if selectedIndex != 4{
            for i in selectedIndex+1...4{
                sender.setImage(UIImage(systemName: "star"), forSegmentAt: i)
            }
        }
        AppData.courseToRate?.totalWorkRank.append(Double(selectedIndex))
        AppData.courseToRate?.numberOfWorkRank += 1
    }
    
    
    
    
}
