//
//  AddController.swift
//  TODOAPP
//
//  Created by 野澤悠 on 2020/04/19.
//  Copyright © 2020年 野澤悠. All rights reserved.
//

import UIKit
var TodoItems = [String] ()
class AddController: UIViewController {

    @IBAction func TodoAddButton(_ sender: Any) {
        TodoItems.append( TodoTextField.text! )
        TodoTextField.text = ""
        UserDefaults.standard.set(TodoItems, forKey:"TodoList")
    }
    @IBOutlet weak var TodoTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
