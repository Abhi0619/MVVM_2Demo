//
//  UserModel.swift
//  MVVM 2 API Calling
//
//  Created by IPS MAC OS 2 on 28/09/21.
//

import UIKit

class UserModel:Codable{
    var page = ""
    var perPage = ""
    var total = ""
    var totalPage = ""
    var data:[arrayUserData] = []
    
    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPage = "total_pages"
        case data
    }
    init(userData:[String:Any]){
        if let value = userData[CodingKeys.page.rawValue],!(value is NSNull){
            self.page = "\(value)"
        }
        if let value = userData[CodingKeys.perPage.rawValue],!(value is NSNull){
            self.page = "\(value)"
        }
        if let value = userData[CodingKeys.total.rawValue],!(value is NSNull){
            self.total = "\(value)"
        }
        if let value = userData[CodingKeys.totalPage.rawValue],!(value is NSNull){
            self.totalPage = "\(value)"
        }
        if let userDetail = userData[CodingKeys.data.rawValue] as? NSArray{
            for userdata in userDetail{
                self.data.append(arrayUserData(userDetail: userdata as! [String:Any]))
            }
        }
    }
}
class arrayUserData:Codable{
    var id = ""
    var name = ""
    var year = ""
    var color = ""
   
    
    enum CodingKeys: String, CodingKey {
        case name
        case year
        case color
        case id
    }
    init(userDetail:[String:Any]){
        if let value = userDetail[CodingKeys.name.rawValue],!(value is NSNull){
            self.name = "\(value)"
        }
        if let value = userDetail[CodingKeys.id.rawValue],!(value is NSNull){
            self.id = "\(value)"
        }
        if let value = userDetail[CodingKeys.year.rawValue],!(value is NSNull){
            self.year = "\(value)"
        }
        if let value = userDetail[CodingKeys.color.rawValue],!(value is NSNull){
            self.color = "\(value)"
        }
    }
}

