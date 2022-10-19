//
//  ContactInfoViewController.swift
//  ContactApp
//
//  Created by Denis on 2022/10/19.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = person.name + " " + person.surName
        
        phoneLabel.text = person.phoneNumber
        eMailLabel.text = person.eMail
    }
}
