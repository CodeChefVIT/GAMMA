//
//  CreateViewController.swift
//  Food Pin Test 1
//
//  Created by Devang Patel on 23/02/19.
//  Copyright © 2019 Devang Patel. All rights reserved.
//

import UIKit
import Alamofire

var alldata = [""]

class CreateViewController: UIViewController {

    @IBOutlet weak var Ndata: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(URL).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
    
    let parameters: Parameters = [
        "name": name
    ]
    @IBAction func addname(_ sender: UIButton) {
        get()
        Alamofire.request(URL, method:.post, parameters:parameters).responseJSON { response in
            switch response.result {
            case .success:
                debugPrint(response)
                
            case .failure(let error):
                print(error)
            }
            
        }
    }
    func get()
    {
        name = Ndata.text!
    print(name)
        self.Ndata.text = nil
    }
    /*
    // MARK: - Navigationee

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
