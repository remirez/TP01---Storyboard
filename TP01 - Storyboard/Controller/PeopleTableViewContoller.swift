//
//  PeopleTableViewContoller.swift
//  TP01 - Storyboard
//
//  Created by Remy McConnell on 2/11/20.
//  Copyright © 2020 Remy McConnell. All rights reserved.
//

import UIKit

class PeopleTableViewContoller: UIViewController, UITableViewDelegate, PSObserver {
    

    
    @IBOutlet weak var theTable: UITableView!
    var setOfPeopleWhoAreHere : PersonSet = PersonSet()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setOfPeopleWhoAreHere.observer = self
        self.theTable.dataSource = setOfPeopleWhoAreHere
        self.theTable.delegate = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sendPerson" {
            if let nextC = segue.destination as? PeopleViewController {
                let index = self.theTable.indexPathForSelectedRow
                nextC.person = setOfPeopleWhoAreHere.people[index!.row]
            }
        } else if segue.identifier == "addPerson"{
            let successVC = segue.destination as! AddViewController
            successVC.personSet = self.setOfPeopleWhoAreHere
        }
 
    }
    
    func add(index : Int) {
        theTable.beginUpdates()
        theTable.insertRows(at: [IndexPath(row : index, section: 0)], with: .automatic)
        theTable.endUpdates()
    }

}
