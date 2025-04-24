//
//  ClassesOfSubjectViewController.swift
//  CLCGrindsetApp
//
//  Created by RYAN STARK on 4/17/25.
//

import UIKit

class classClicked{
    static var cclass: Course = Course(courseID: "",courseName: "",credits: "",subject: "",term: "",eligibleGrades: "",prerequisite: "",corequisite: "",enrollmentNotes: "",description: "",isElective: "",courseType: "", rank: 0, rankCount: 0
    )
    
    static var selectedClass = ""

}

class ClassesOfSubjectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var currentSubjectClasses: [Course] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentSubjectClasses = allCourses.filter { $0.subject == subjectClicked.subject }
        tableView.dataSource = self
        tableView.delegate = self

                
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentSubjectClasses.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassesCell", for: indexPath)
//        cell.textLabel?.text = "\(course.subject) - \(course.courseName)"
        cell.textLabel?.text = "\(currentSubjectClasses[indexPath.row].courseID)\t\(String(currentSubjectClasses[indexPath.row].courseName))"
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        classClicked.cclass = currentSubjectClasses[indexPath.row]
        performSegue(withIdentifier: "seeDetails", sender: nil)
//        performSegue(withIdentifier: "backToSchedule", sender: nil)
        
        print(currentSubjectClasses[indexPath.row].courseName)
        classClicked.selectedClass = currentSubjectClasses[indexPath.row].courseName
        AppData.studentSchedule[periodClicked.selectedPeriod - 1] = classClicked.selectedClass
        
    }
}
