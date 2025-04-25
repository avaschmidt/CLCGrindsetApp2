//
//  TeacherCreateClassViewController.swift
//  CLCGrindsetApp
//
//  Created by EVANGELINE NOFTZ on 4/24/25.
//

import UIKit

class TeacherCreateClassViewController: UIViewController {

    /*static var cclass: Course = Course(courseID: "",courseName: "",credits: "",subject: "",term: "",eligibleGrades: "",prerequisite: "",corequisite: "",enrollmentNotes: "",description: "",isElective: "",courseType: ""
    )*/
    
    @IBOutlet weak var courseIDInput: UITextField!
    
    @IBOutlet weak var courseNameInput: UITextField!
    
    @IBOutlet weak var creditsInput: UITextField!
    
    @IBOutlet weak var subjectInput: UITextField!
    
    @IBOutlet weak var termInput: UITextField!
    
    @IBOutlet weak var eligibleGradesInput: UITextField!
    
    @IBOutlet weak var prerequisitesInput: UITextField!
    
    @IBOutlet weak var corerequisitesInput: UITextField!
    
    @IBOutlet weak var enrollmentNotesInput: UITextField!
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    @IBOutlet weak var electiveInput: UITextField!
    
    @IBOutlet weak var courseTypeInput: UITextField!
    
    // need to add another text view :(
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func addClassButton(_ sender: UIButton) {
        var courseID = courseIDInput.text
        var courseName = courseNameInput.text
        var credits = creditsInput.text
        var subject = subjectInput.text
        var term = termInput.text
        var grades = eligibleGradesInput.text
        var prerequisites = prerequisitesInput.text
        var corerequisites = corerequisitesInput.text
        var enrollmentNotes = enrollmentNotesInput.text
        var description = descriptionInput.text
        var elective = electiveInput.text
        var courseType = courseTypeInput.text
        
        //var course = Course(courseID: courseID, courseName: courseName, credits: credits, subject: subject, term: term, eligibleGrades: grades, prerequisite: prerequisites, corequisite: corerequisites, enrollmentNotes: enrollmentNotes, description: description, isElective: elective, courseType: courseType, rank: 0, rankCount: 0)
        //allCourses.append(course)
    }
    

}
