//
//  PeopleTableViewContoller.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/11/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import UIKit

class PeopleTableViewContoller: UITableViewController {

    @IBOutlet var theTable: UITableView!
    
    var setOfPeopleWhoAreHere : PersonSet = PersonSet()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setOfPeopleWhoAreHere = PersonSet()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return setOfPeopleWhoAreHere.people.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListItem", for: indexPath) as! PersonTableViewCell

        cell.setPerson(person: setOfPeopleWhoAreHere.people[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "People"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendPerson" {
            if let nextC = segue.destination as? PeopleViewController {
                let index = self.theTable.indexPathForSelectedRow
                nextC.person = setOfPeopleWhoAreHere.people[index!.row]
            }
        }
    }
}
