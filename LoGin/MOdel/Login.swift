//
//  Login.swift
//  LoGin
//
//  Created by Anh vũ on 4/18/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

struct User: Codable {
    var phoneNumber:String
    var password   :String
    var latitude   :Double
    var longitude  :Double
    var deviceID   :String
   private enum CodingKeys: String, CodingKey {
        case phoneNumber = "phone_number"
        case password
        case latitude
        case longitude   = "longtitude"
        case deviceID    = "device_id"
    }
    func getJsonData() -> Data? {
        let jsonEncoder  = JSONEncoder()
        return try? jsonEncoder.encode(self)
    }
}

struct LoginReturnData: Decodable {
    let data: LoginData

    struct LoginData: Decodable {
        let access_token:String
        let client: ClientInfor
        struct ClientInfor: Decodable {
            let id:Int
        }
    }
}
