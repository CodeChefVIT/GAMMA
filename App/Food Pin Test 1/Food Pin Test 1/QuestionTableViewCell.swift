//
//  QuestionTableViewCell.swift
//  Food Pin Test 1
//
//  Created by Devang Patel on 22/02/19.
//  Copyright © 2019 Devang Patel. All rights reserved.
//

import UIKit
var qs = " jhvb"
class QuestionTableViewCell: UITableViewCell {  
    @IBOutlet var qlabel: UILabel!
    
    @IBOutlet weak var qsend: UITextField!
    func getq()
    {
    let qt = qsend.text
        qs = qt!
    print(qt as Any)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
