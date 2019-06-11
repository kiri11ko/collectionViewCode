//
//  WorkData.swift
//  ramaxTest
//
//  Created by Кирилл Лукьянов on 03/04/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit

class CollectionViewDataManager {

    var jsonData: Json4Swift_Base!
    var view: ViewController!
    var imageList: [UIImage] = [] {
        didSet {
            print("new image load")
            DispatchQueue.main.async {
                self.view.collectionView.reloadData()
            }
            
        }
    }
     convenience init(view: ViewController) {
        self.init()
        self.view = view
    }
    func addNewItem(view: ViewController, image: UIImage) {
        self.view = view
        self.imageList.append(image)
    }
}
