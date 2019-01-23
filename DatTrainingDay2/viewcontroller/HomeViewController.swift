//
//  HomeViewController.swift
//  DatTrainingDay2
//
//  Created by AcePlus101 on 1/23/19.
//  Copyright © 2019 AcePlus. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{

    @IBOutlet weak var tvContactList: UITableView!
    
    var contactList = [Contact]()
    override func viewDidLoad() {
        super.viewDidLoad()
        contactList = DataModel().getContactList()
        let uinib = UINib(nibName: "ContactListTableViewCell", bundle: nil)
        tvContactList.register(uinib, forCellReuseIdentifier: "ContactListTableViewCell")
        tvContactList.dataSource = self
        tvContactList.delegate = self
    }
    
    
}

extension HomeViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactListTableViewCell", for: indexPath) as! ContactListTableViewCell
        cell.setData(data: contactList[indexPath.row])
        return cell
    }
}

extension HomeViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(96.0)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Click at row \(indexPath.row)")
        let navigationVC = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! UINavigationController
        let vc = navigationVC.children.first as! DetailViewController
        vc.contact = contactList[indexPath.row]
        self.present(navigationVC, animated: true, completion: nil)
    }
}
