//
//  DataModel.swift
//  DatTrainingDay2
//
//  Created by AcePlus101 on 1/23/19.
//  Copyright © 2019 AcePlus. All rights reserved.
//

import Foundation
class DataModel{
    
    func getContactList() -> [Contact] {
        var contactLit = [Contact]()
        let contact1 = Contact(name: "Mg Mg", phone: "0929392932", image: "user")
        let contact2 = Contact(name: "Kyaw Kyaw", phone: "09988328832", image: "user")
        contactLit.append(contact1)
        contactLit.append(contact2)
        contactLit.append(contact1)
        contactLit.append(contact2)
        contactLit.append(contact1)
        contactLit.append(contact2)
        contactLit.append(contact1)
        contactLit.append(contact2)
        return contactLit
    }
}

struct Contact {
    var name:String?
    var phone:String?
    var image:String?
}
