//
//  ViewController.swift
//  Events
//
//  Created by DA MAC M1 139 on 2023/07/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameTxtField: UITextField!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func btnSubmit(_ sender: UIButton) {
        let name = NameTxtField.text ?? ""
        titleLbl.text = "Welcome, \(name)"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        NameTxtField.resignFirstResponder()
        
    }
    @IBAction func toggleSwitcchAction(_ sender: UISwitch) {
        if sender.isOn{
            self.view.backgroundColor = .white
            titleLbl.textColor = .black
        }
        else
        {
            self.view.backgroundColor = .black
            titleLbl.textColor = .white
        }
    }
    
}

