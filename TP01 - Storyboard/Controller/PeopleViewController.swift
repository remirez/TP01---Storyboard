//
//  PeopleViewController.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/14/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import Foundation
import UIKit

class PeopleViewController: UIViewController {
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var department: UILabel!
    @IBOutlet weak var profession: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.department.text = self.person.department
        self.firstName.text  = self.person.firstName
        self.lastName.text  = self.person.lastName
        self.profession.text = self.person.profession
    }
}
