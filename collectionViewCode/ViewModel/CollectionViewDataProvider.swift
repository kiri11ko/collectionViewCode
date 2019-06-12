//
//  CollectionViewDataProvider.swift
//  ramaxTest
//
//  Created by Кирилл Лукьянов on 07/06/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit

class ColletionViewDataProvider: NSObject {
    
    let datasource: UICollectionViewDataSource? = nil
    let dataManager = CollectionViewDataManager()
    
    init(view: StartCollectionViewController) {
        let networkService = ServiceNetwork()
        networkService.getJSON(view: view, dataManager: dataManager)
    }
}
extension ColletionViewDataProvider: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataManager.imageList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell
        cell.moduleImage.image = dataManager.imageList[indexPath.row]
        return cell
    }
}

extension ColletionViewDataProvider: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
}
