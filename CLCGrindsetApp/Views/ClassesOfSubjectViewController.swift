//
//  ClassesOfSubjectViewController.swift
//  CLCGrindsetApp
//
//  Created by RYAN STARK on 4/17/25.
//

import UIKit

class classClicked{
    static var cclass: Course = Course(courseID: "",courseName: "",credits: "",subject: "",term: "",eligibleGrades: "",prerequisite: "",corequisite: "",enrollmentNotes: "",description: "",isElective: "",courseType: ""
    )

}

class ClassesOfSubjectViewController: UIViewController, UITableViewDataSource {

    var currentSubjectClasses: [Course] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentSubjectClasses = allCourses.filter { $0.subject == subjectClicked.subject }


                
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentSubjectClasses.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubjectsCell", for: indexPath)
//        cell.textLabel?.text = "\(course.subject) - \(course.courseName)"
        cell.textLabel?.text = "\(currentSubjectClasses[indexPath.row])"
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        classClicked.cclass = currentSubjectClasses[indexPath.row]
        performSegue(withIdentifier: "seeDetails", sender: nil)
    }
}
