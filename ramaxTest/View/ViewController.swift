//
//  ViewController.swift
//  ramaxTest
//
//  Created by Кирилл Лукьянов on 03/04/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var alert: UIAlertController! = nil
    var collectionView: UICollectionView! = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
         alert = UIAlertController(title: "Downlods", message: "Please wait...", preferredStyle: .alert)
        show(alert, sender: nil)
    }
    

}
extension ViewController: UICollectionViewDataSource {
    
    func setupCollectionView() {
        WorkData.init(view: self)
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        flowLayout.minimumLineSpacing = 100.0
        flowLayout.minimumInteritemSpacing = 20.0
        collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        
        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
        
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return WorkData.instance.imageList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell
        cell.moduleImage.image = WorkData.instance.imageList[indexPath.row]
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }

}
