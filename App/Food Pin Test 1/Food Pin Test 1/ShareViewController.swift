//
//  ShareViewController.swift
//  Food Pin Test 1
//
//  Created by Devang Patel on 23/02/19.
//  Copyright © 2019 Devang Patel. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Sharebutton(_ sender: UIButton) {
        let alert = UIActivityViewController(activityItems: [], applicationActivities: nil)
        
        present(alert,animated: true, completion: nil)
    }
    

}
