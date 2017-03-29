//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 高崎 慶輔 on 2017/03/28.
//  Copyright © 2017年 Keisuke Takasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        textField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        let inputName:String = textField.text!
        resultViewController.name = "こんにちは、\(inputName)さん"
    }
}

