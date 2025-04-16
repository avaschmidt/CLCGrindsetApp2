//
//  CLCClass.swift
//  CLCGrindsetApp
//
//  Created by PETER MICKLE on 4/16/25.
//

import Foundation

class CLCCLass{
    
    
    var name: String
    var id: String
    //parralel arrays for classes with multiple credit types
    var credits: [Double]
    var creditTypes: [String]
    //------------------------------------------------------
    var totalRating: Double
    var ratingCount: Int
    var calculatedRating: Double
    var teachers: [String]
    //name of class
    var prerequisites: [String]
    
    init(name: String, id: String, credits: [Double], creditTypes: [String], teachers: [String], prerequisites: [String]) {
        self.name = name
        self.id = id
        self.credits = credits
        self.creditTypes = creditTypes
        self.totalRating = 0
        self.ratingCount = 0
        self.calculatedRating = 0
        self.teachers = teachers
        self.prerequisites = prerequisites
    }
    
    func updateRating(){
        calculatedRating = totalRating / Double(ratingCount)
    }
    
    
}
