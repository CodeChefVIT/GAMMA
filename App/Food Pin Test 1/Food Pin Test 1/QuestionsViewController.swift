//
//  QuestionsViewController.swift
//  Food Pin Test 1
//
//  Created by Devang Patel on 22/02/19.
//  Copyright © 2019 Devang Patel. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

var questions = ["wefqwef", "awef", "ehfweki"]
var name1: String = ""

class QuestionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        questionsTableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == questions.count {

            questions.append("hdjuftgytgy")
            questionsTableView.reloadData()
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count + 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == questions.count {
            let cell = questionsTableView.dequeueReusableCell(withIdentifier: "addButton", for: indexPath) as! ButtonTableViewCell
            return cell
        }

        else {
            let cell = questionsTableView.dequeueReusableCell(withIdentifier: "question", for: indexPath) as! QuestionTableViewCell
            cell.qlabel.text = "Q\(indexPath.row+1)"
            
            
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        questions.remove(at: 0)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    @IBOutlet weak var questionsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.questionsTableView.delegate = self
        self.questionsTableView.dataSource = self
    }


}
