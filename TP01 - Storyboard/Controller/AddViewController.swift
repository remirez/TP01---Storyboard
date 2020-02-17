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

   
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var departmentField: UITextField!
    @IBOutlet weak var professionField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
}
