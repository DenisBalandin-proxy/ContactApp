//
//  ViewController.swift
//  ContactApp
//
//  Created by Denis on 2022/10/18.
//

import UIKit
import Foundation

class ContactsViewController: UITableViewController {
    
    private let persones = Person.getPersonalInfo()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else {
            return
        }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        contactInfoVC.person = persones[indexPath.row]
    }
}

extension ContactsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persones.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "contactCell",
            for: indexPath
        )
        
        let person = persones[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surName
        
        return cell
    }
}

