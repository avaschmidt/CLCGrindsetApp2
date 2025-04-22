//
//  ViewController.swift
//  CLCGrindsetApp
//
//  Created by EVANGELINE NOFTZ on 4/15/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var uniqueSubjects: [String] = []

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCoursesFromCSV()
//        for i in 0..<courses.count{
//            print(courses[i].courseName)
//        }
        tableView.dataSource = self
        filteredCourses = allCourses
        uniqueSubjects = Array(Set(allCourses.map { $0.subject })).sorted()
        tableView.reloadData()

    }
    
    @IBAction func Sort(_ sender: UIButton) {
//        filteredCourses = allCourses.filter { $0.subject == "Math" }
        uniqueSubjects = Array(Set(allCourses.map { $0.subject }))
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uniqueSubjects.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubjectsCell", for: indexPath)
//        cell.textLabel?.text = "\(course.subject) - \(course.courseName)"
        cell.textLabel?.text = "\(uniqueSubjects[indexPath.row])"
        return cell
    }


}

