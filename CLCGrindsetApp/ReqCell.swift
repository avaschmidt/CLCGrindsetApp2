//
//  ReqCell.swift
//  CLCGrindsetApp
//
//  Created by MATTHEW FITCH on 4/21/25.
//

import Foundation

import UIKit

class ReqCell: UITableViewCell {
    
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var creditsLabel: UILabel!
    
    func customize(name: String, creditText: String)
    {
        classNameLabel.text = name
        creditsLabel.text
    }
}
