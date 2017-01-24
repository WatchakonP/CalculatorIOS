//
//  ViewController.swift
//  Noob Calculator
//
//  Created by Watcha Pon on 1/24/17.
//  Copyright © 2017 Indie Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBOutlet weak var PlusButton: UIButton!
    @IBOutlet weak var MinusButton: UIButton!
    @IBOutlet weak var MultButton: UIButton!
    @IBOutlet weak var DivButton: UIButton!    
    @IBOutlet weak var Field1: UITextField!
    @IBOutlet weak var Field2: UITextField!
    @IBOutlet weak var ResultLabel: UILabel!
    
    func getValueField1 () -> Float32{
        if (Field1.text == "") {return 0 }
        else{
            return Float32(Field1.text!)!
        }
    }
    func getValueField2 () -> Float32{
        if (Field2.text == "") {return 0 }
        else{
            return Float32(Field2.text!)!
        }
    }
    
    @IBAction func PlusButtonPress(_ sender: UIButton) {
        ResultLabel.text = String(getValueField1() + getValueField2())
    }
    @IBAction func MinusButtonPress(_ sender: UIButton) {
        ResultLabel.text = String(getValueField1() - getValueField2())
   }
    @IBAction func MultButtonPress(_ sender: UIButton) {
        ResultLabel.text = String(getValueField1() * getValueField2())
}
    @IBAction func DivButtonPress(_ sender: UIButton) {
        if(getValueField2() == 0){
            ResultLabel.text = "Don't do that"
        }
        else{
        ResultLabel.text = String(getValueField1() / getValueField2())
        }
    }
 
}

