//
//  GalleryViewController.swift
//  DatTrainingDay2
//
//  Created by AcePlus101 on 1/23/19.
//  Copyright © 2019 AcePlus. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var cvGallery: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cvGallery.register(UINib(nibName: "GalleryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GalleryCollectionViewCell")
        self.cvGallery.dataSource = self
        self.cvGallery.delegate = self
    }
}

extension GalleryViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCollectionViewCell", for: indexPath)
        return cell
    }
    
    
}

extension GalleryViewController:UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("Click at item position \(indexPath.row)")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 100.0)
    }
}
