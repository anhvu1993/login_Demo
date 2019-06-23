//
//  ViewController.swift
//  LoGin
//
//  Created by Anh vũ on 4/18/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var myview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    //        if phoneNumber.text != "", passWord.text != "" {
    //            return true
    //        }
    //        let alert = UIAlertController(title: "Error", message: "vui lòng nhập mật khẩu", preferredStyle: UIAlertController.Style.alert)
    //        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    //        self.present(alert, animated: true, completion: nil)
    //        return false
    //    }
    
    @IBAction func run(_ sender: Any) {
        
        
        let user = User(phoneNumber: phoneNumber.text!, password: passWord.text!, latitude: 21.0335302, longitude: 105.7678049, deviceID: UIDevice.current.identifierForVendor?.uuidString ?? "")
        
        // create post request
        let url = URL(string: apiLogin )!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let data = user.getJsonData()
        URLSession.shared.uploadTask(with: request, from: data) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            do {
                let loginReturnData = try JSONDecoder().decode(LoginReturnData.self, from: data )
                print(loginReturnData)
            } catch {
                print(error.localizedDescription)
            }
            }.resume()
        
        
        
//        let user = User(phoneNumber: "+84924586555", password: "123456", latitude: 21.0335302, longitude: 105.7678049, deviceID: UIDevice.current.identifierForVendor?.uuidString ?? "")
//        let url = URL(string: urlLogin)!
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        let data = user.getJsonData()
//        URLSession.shared.uploadTask(with: request, from: data) { data, response, error in
//            guard let data = data, error == nil else {
//                print(error?.localizedDescription ?? "No data")
//                return
//            }
//            do {
//                let loginReturnData = try JSONDecoder().decode(LoginReturnData.self, from: data )
//                print(loginReturnData)
//            } catch {
//                print(error.localizedDescription)
//            }
//            }.resume()
//
    }
}




