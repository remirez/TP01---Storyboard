//
//  AddViewController.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/14/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class AddViewController: UIViewController {

    var personSet : PersonSet!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var departmentField: UITextField!
    @IBOutlet weak var professionField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBAction func addPerson(_ sender: Any) {
        let p = Person(firstName: firstNameField.text!, lastName: lastNameField.text!, profession: professionField.text!, department: departmentField.text!)
        
        self.personSet.add(p: p)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
}
