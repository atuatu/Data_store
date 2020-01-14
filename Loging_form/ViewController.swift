//
//  ViewController.swift
//  Loging_form
//
//  Created by kiyolab02 on 2020/01/14.
//  Copyright © 2020 Atsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    


    @IBOutlet weak var name_text: UITextField!
    @IBOutlet weak var pass_text: UITextField!
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var pass_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        name_label.text = "名前"
        pass_label.text = "パスワード"
    }

    @IBAction func store_text(_ sender: Any) {
        let name:String = name_text.text!
        let pass:String = pass_text.text!
        UserDefaults.standard.set(name, forKey: "Name")
        UserDefaults.standard.set(pass, forKey: "Pass")
        print("データを保存しました")
    }
    @IBAction func update_text(_ sender: Any) {
        let name = UserDefaults.standard.object(forKey: "Name") as! String
        let pass = UserDefaults.standard.object(forKey: "Pass") as! String
        name_label.text = name
        pass_label.text = pass
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

