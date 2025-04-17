//
//  ViewController.swift
//  CLCGrindsetApp
//
//  Created by EVANGELINE NOFTZ on 4/15/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCoursesFromCSV()
//        for i in 0..<courses.count{
//            print(courses[i].courseName)
//        }
        tableView.dataSource = self
        filteredCourses = allCourses
        
    }
    
    @IBAction func Sort(_ sender: UIButton) {
        filteredCourses = allCourses.filter { $0.subject == "Math" }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredCourses.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let course = filteredCourses[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubjectsCell", for: indexPath)
        cell.textLabel?.text = "\(course.subject) - \(course.courseName)"
        return cell
    }


}

