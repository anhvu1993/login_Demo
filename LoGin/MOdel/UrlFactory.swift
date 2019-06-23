////
////  UrlFactory.swift
////  LoGin
////
////  Created by Anh vũ on 5/6/19.
////  Copyright © 2019 anh vu. All rights reserved.
////
//
//import Foundation
//
//enum UrlFactory:String {
//    case login, promotion, history
//    var URL: URL {
//        func generalUrlComponent(path: String) -> URL {
//            var urlComponent = URLComponents()
//            urlComponent.scheme = "http"
//            urlComponent.host = "159.65.135.188"
//            urlComponent.port = 9670
//            urlComponent.path = path
//            return urlComponent.url!
//        }
//        
//        //viết path để gọi đuôi URL tại đây
////        switch self {
//        case .login:
//            return  generalUrlComponent(path: "/clients/login")
//        case .promotion:
//            return generalUrlComponent(path: "")
//        case .history:
//            return generalUrlComponent(path: "/clients/history/")
//        }
//    }
//}
