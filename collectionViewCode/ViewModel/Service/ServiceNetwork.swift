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
    
    fileprivate func dissmaisAlert(_ view: StartCollectionViewController) {
        guard let alert = view.alert else { return }
        DispatchQueue.main.async { [unowned alert] in
            alert.dismiss(animated: true, completion: nil)
        }
    }
    
    func getJSON(view: StartCollectionViewController, dataManager: CollectionViewDataManager) {
        showAlert(view)
        guard let url = URL(string: "http://api.giphy.com/v1/gifs/search?q=usa&api_key=LWsGBFf74m2HA28HFcG33Dhj1WmHYO2o") else { return}
        getData(from: url) {[unowned view] data, response, error in
            guard error == nil else { return }
            guard let data = data else { return }
            let jsonDecoder = JSONDecoder()
            guard let responseModel = try? jsonDecoder.decode(JsonBase.self, from: data) else { return }
            guard let response = responseModel.data else { return }
            for value in response {
                DispatchQueue.global().async {
                    if let url = URL(string: (value.images?.original?.url) ?? "" ) {
                        self.getImage(url: url, dataManager: dataManager)
                    }
                }
                
            }
            self.dissmaisAlert(view)

        }
    }
    
   fileprivate func getImage(url: URL, dataManager: CollectionViewDataManager) {
            getData(from: url) { data, response, error in
                guard let data = data, error == nil else { return }
                guard let image = UIImage(data: data) else { return }
            
                dataManager.imageList.append(image)

                
             }
    }
    fileprivate func showAlert(_ view: StartCollectionViewController) {
        DispatchQueue.main.async { [unowned view] in
            view.alert = UIAlertController(title: "Downlods", message: "Please wait...", preferredStyle: .alert)
            view.show(view.alert!, sender: nil)
        }
    }
}
