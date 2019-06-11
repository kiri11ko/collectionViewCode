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
    
    lazy var collectionView: UICollectionView = {
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self.dataProvider
        collectionView.delegate = self.dataProvider
        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.white
        
        return collectionView
    }()
    
    lazy var dataProvider: ColletionViewDataProvider = {
        
        let dataProvider = ColletionViewDataProvider()
//        dataProvider.datasource = self
        return dataProvider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(collectionView)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
         alert = UIAlertController(title: "Downlods", message: "Please wait...", preferredStyle: .alert)
        show(alert!, sender: nil)
        
    }
    
    func setupCollectionView() {
        WorkData.init(view: self)
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        flowLayout.minimumLineSpacing = 100.0
        flowLayout.minimumInteritemSpacing = 20.0
        collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)

        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        collectionView.dataSource = self

        self.view.addSubview(collectionView)
    }

}

