//
//  nextpage.swift
//  Loging_form
//
//  Created by kiyolab02 on 2020/01/14.
//  Copyright © 2020 Atsushi. All rights reserved.
//

import Foundation
import UIKit

class nextpage: UIViewController{
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var pass: UILabel!
    
    @IBAction func update_text(_ sender: Any) {
           let name = UserDefaults.standard.object(forKey: "Name") as! String
           let pass = UserDefaults.standard.object(forKey: "Pass") as! String
            self.name.text = name
            self.pass.text = pass
       }
}
