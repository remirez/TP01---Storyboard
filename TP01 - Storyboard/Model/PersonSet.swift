//
//  PersonSet.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/14/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import Foundation
import UIKit

class PersonSet : NSObject, UITableViewDataSource {
    private(set) var people: [Person] = [
        Person(firstName: "Remy", lastName: "McConnell", profession: "Student", department: "IG"),
        Person(firstName: "Garira", lastName: "Moundi Mazou", profession: "Student", department: "IG"),
        Person(firstName: "Lucas", lastName: "Paulin", profession: "Student", department: "IG"),
        Person(firstName: "Valentin", lastName: "Guyon", profession: "Student", department: "IG"),
        Person(firstName: "Mathieu", lastName: "Veber", profession: "Student", department: "IG")
    ]
    
    var observer : PSObserver?
    
    func add(p: Person) {
        self.people.append(p)
        
        if let o = observer {
            o.add(index : people.count-1)
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.people.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PersonTableViewCell

        cell.setPerson(person: self.people[indexPath.row])
        //cell.textLabel?.text = setOfPeopleWhoAreHere.people[indexPath.row].firstName

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "People"
    }
}
