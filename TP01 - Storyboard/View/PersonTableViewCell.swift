//
//  PersonTableViewCell.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/11/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    func setPerson(person: Person) {
        firstName.text = person.firstName
        lastName.text = person.lastName
    }
}
