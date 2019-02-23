//
//  ChatViewController.swift
//  Food Pin Test 1
//
//  Created by Devang Patel on 23/02/19.
//  Copyright © 2019 Devang Patel. All rights reserved.
//

import UIKit
import Alamofire
class ChatViewController: UIViewController {

    @IBOutlet weak var stext: UITextField!
    
    @IBOutlet weak var ans: UILabel!
   
    func changeText()
    {
         self.ans.text="qwef";
    }
    
    @IBAction func SendC(_ sender: UIButton) {
        changeText()
        getsend()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getsend()
    {
        resp = stext.text!
        print(resp as Any)
        self.stext.text = nil
    }


}
