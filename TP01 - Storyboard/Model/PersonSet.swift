//
//  PersonSet.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/14/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import Foundation

class PersonSet {
    private(set) var people: [Person]
    
    init() {
        self.people = [
            Person(firstName: "Remy", lastName: "McConnell", profession: "Student", department: "IG"),
            Person(firstName: "Garira", lastName: "Moundi Mazou", profession: "Student", department: "IG"),
            Person(firstName: "Lucas", lastName: "Paulin", profession: "Student", department: "IG"),
            Person(firstName: "Valentin", lastName: "Guyon", profession: "Student", department: "IG"),
            Person(firstName: "Mathieu", lastName: "Veber", profession: "Student", department: "IG")
        ]
    }
    
    func add(p: Person) {
        self.people.append(p)
    }
}
