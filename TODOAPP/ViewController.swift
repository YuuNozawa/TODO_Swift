//
//  ViewController.swift
//  TODOAPP
//
//  Created by 野澤悠 on 2020/04/19.
//  Copyright © 2020年 野澤悠. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定（表示するセル数）
        return TodoItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        TodoCell.textLabel!.text = TodoItems[indexPath.row]
        return TodoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //TodoListにデータがあるか確認
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            TodoItems = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }


}

