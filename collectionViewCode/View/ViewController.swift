//
//  ViewController.swift
//  ramaxTest
//
//  Created by Кирилл Лукьянов on 03/04/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var alert: UIAlertController?
    private var token: NSKeyValueObservation?
    
    lazy var collectionView: UICollectionView = {
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
    
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self.dataProvider
        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.white
        return collectionView
    }()
    
    lazy var dataProvider: ColletionViewDataProvider = {
        let dataProvider = ColletionViewDataProvider(view: self)
        
        return dataProvider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(collectionView)
        token = dataProvider.dataManager.observe(\CollectionViewDataManager.imageList, options: .new) { _,_  in
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        }
    }


}

