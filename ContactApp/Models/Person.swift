//
//  Person.swift
//  ContactApp
//
//  Created by Denis on 2022/10/18.
//

struct Person {
    let name: String
    let surName: String
    let phoneNumber: String
    let eMail: String
    
    init(
        name: String = "",
        surName: String = "",
        phoneNumber: String = "",
        eMail: String = ""
    ) {
        self.name = name
        self.surName = surName
        self.phoneNumber = phoneNumber
        self.eMail = eMail
    }
    
    static func getPersonalInfo() -> [Person] {
        
        var person: [Person] = []
        let data = DataStore()
        
        for _ in 0..<data.names.count {
            person.append(
                Person(
                    name: processingData(value: &data.names),
                    surName: processingData(value: &data.surNames),
                    phoneNumber: processingData(value: &data.phoneNumbers),
                    eMail: processingData(value: &data.eMails)
                )
            )
        }
        return person
    }
}

private func processingData(value: inout [String]) -> String {
    let randomValue = value.randomElement()
    let index = value.firstIndex(of: randomValue ?? "")
    value.remove(at: index ?? 0)
    return randomValue ?? ""
}

