//
//  ServiceJSONLoad.swift
//  ramaxTest
//
//  Created by Кирилл Лукьянов on 03/04/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit
class ServiceNetwork {
    static var instance = ServiceNetwork()
    
     func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
     func getJSON(view: ViewController) {
        let url = URL(string: "http://api.giphy.com/v1/gifs/search?q=usa&api_key=LWsGBFf74m2HA28HFcG33Dhj1WmHYO2o")
        let task = URLSession.shared.dataTask(with: url!) {  (data, response, error)  in
            let jsonDecoder = JSONDecoder()
            let responseModel = try? jsonDecoder.decode(Json4Swift_Base.self, from: data!)
            print(responseModel)
            WorkData.instance.jsonData = responseModel
            for value in responseModel!.data! {
                DispatchQueue.global().async {
                    self.getImage(url: URL(string: value.images!.original!.url!)!, view: view)
                }
                
            }
            DispatchQueue.main.async {
                view.alert.dismiss(animated: true, completion: nil)
                view.setupCollectionView()
            }

        }
        task.resume()
    }
     func getImage(url: URL, view: ViewController) {

            print("Download Started \(Thread.current)")
        
            getData(from: url) { data, response, error in
                print(url)
                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? url.lastPathComponent)
                WorkData.instance.addNewItem(view: view, image: UIImage(data: data)!)
                print("Download Finished")
                
             }
    }
}
