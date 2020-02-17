//
//  Person.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/11/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import Foundation

class Person {
    var firstName : String;
    var lastName : String;
    var profession : String;
    var department : String;
    
    init(firstName fn: String, lastName ln: String, profession p: String, department d: String) {
        self.firstName = fn;
        self.lastName = ln;
        self.profession = p;
        self.department = d;
    }
}
