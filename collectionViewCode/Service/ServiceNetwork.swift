//
//  ServiceJSONLoad.swift
//  ramaxTest
//
//  Created by Кирилл Лукьянов on 03/04/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit
class ServiceNetwork {

   fileprivate func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    fileprivate func showAlert(_ view: ViewController) {
        DispatchQueue.main.async {
            view.alert = UIAlertController(title: "Downlods", message: "Please wait...", preferredStyle: .alert)
            view.show(view.alert!, sender: nil)
        }
    }
    
    fileprivate func dissmaisAlert(_ view: ViewController) {
        DispatchQueue.main.async {
            view.alert!.dismiss(animated: true, completion: nil)
            //                view.setupCollectionView()
        }
    }
    
    func getJSON(view: ViewController, dataManager: CollectionViewDataManager) {
        showAlert(view)
        let url = URL(string: "http://api.giphy.com/v1/gifs/search?q=usa&api_key=LWsGBFf74m2HA28HFcG33Dhj1WmHYO2o")
        let task = URLSession.shared.dataTask(with: url!) {  (data, response, error)  in
            guard error == nil else { return }
            let jsonDecoder = JSONDecoder()
            let responseModel = try? jsonDecoder.decode(Json4Swift_Base.self, from: data!)
            for value in responseModel!.data! {
                DispatchQueue.global().async {
                    if let url = URL(string: (value.images?.original?.url) ?? "" ) {
                        self.getImage(url: url, view: view, dataManager: dataManager)
                    }
                }
                
            }
            self.dissmaisAlert(view)

        }
        task.resume()
    }
    
   fileprivate func getImage(url: URL, view: ViewController, dataManager: CollectionViewDataManager) {
            getData(from: url) { data, response, error in
                
                guard let data = data, error == nil else { return }
                guard let image = UIImage(data: data) else { return }
            
                dataManager.imageList.append(image)

                
             }
    }
}
