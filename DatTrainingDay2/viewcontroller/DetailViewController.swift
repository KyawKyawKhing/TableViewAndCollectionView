//
//  DetailViewController.swift
//  DatTrainingDay2
//
//  Created by AcePlus101 on 1/23/19.
//  Copyright © 2019 AcePlus. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var contact:Contact!
    
    @IBOutlet weak var ivUser: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ivUser.image = UIImage(named: contact.image ?? "user")
        self.lblName.text = contact.name
        self.lblPhone.text = contact.phone
    }
    
    @IBAction func onClickBackButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
