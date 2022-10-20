//
//  ExtendedContactsTableViewController.swift
//  ContactApp
//
//  Created by Denis on 2022/10/19.
//

import UIKit

class ExtendedContactsTableViewController: UITableViewController {
    
    let persones = Person.getPersonalInfo()
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persones[section].name + " " + persones[section].surName
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persones.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "extendedContactCell", for: indexPath)
        
        cell.backgroundColor = .systemGray4
        var configuration = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            configuration.image = UIImage(systemName: "phone")
            configuration.text = persones[indexPath.section].phoneNumber
        } else {
            configuration.image = UIImage(systemName: "mail")
            configuration.text = persones[indexPath.section].eMail
        }
        cell.contentConfiguration = configuration
        return cell
    }
}
