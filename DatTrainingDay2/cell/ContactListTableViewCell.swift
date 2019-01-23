//
//  ContactListTableViewCell.swift
//  DatTrainingDay2
//
//  Created by AcePlus101 on 1/23/19.
//  Copyright © 2019 AcePlus. All rights reserved.
//

import UIKit

class ContactListTableViewCell: UITableViewCell {
    @IBOutlet weak var ivUser: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(data:Contact) {
        self.ivUser.image = UIImage(named: data.image ?? "user")
        self.lblName.text = data.name
        self.lblPhone.text = data.phone
    }
    
}
