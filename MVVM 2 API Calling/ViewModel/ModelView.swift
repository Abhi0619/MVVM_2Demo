//
//  ModelView.swift
//  MVVM 2 API Calling
//
//  Created by IPS MAC OS 2 on 28/09/21.
//

import UIKit
import Alamofire
class ModelView{
    var vc:ViewController? = nil
    var ViewDataArrayModel:[arrayUserData] = []
    func getUserdata(){
        AF.request("\(kGetUserDataAPI)").response { response in
            if let data = response.data{
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                   
                    let jsonData = UserModel.init(userData: json as! [String:Any])
                    self.ViewDataArrayModel = jsonData.data
                    DispatchQueue.main.async {
                        self.vc?.tableView.reloadData()
                    }
                    print(jsonData.data[0].name)
                    
                }
                catch{
                    print(error)
                }
            }
        }
    }
}
