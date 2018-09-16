//
//  ViewController.swift
//  DayOneDemo
//
//  Created by David Ngetich on 9/15/18.
//  Copyright © 2018 David Ngetich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var changeTextColorButton: UIButton!
    
    @IBOutlet weak var ViewColorButton: UIButton!
    
    @IBOutlet weak var textButton: UIButton!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var backGroundColor: UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeTextColorButton.layer.cornerRadius = 8
        ViewColorButton.layer.cornerRadius = 8
        textButton.layer.cornerRadius = 8

        backGroundColor  = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: UIButton) {
        textLabel.textColor = UIColor.magenta
        
    }
    
    @IBAction func didTapViewButton(_ sender: UIButton) {
        
        view.backgroundColor = UIColor.clear
    }
    
    
    @IBAction func didTapTextButton(_ sender: UIButton) {
        
        //textLabel.text = "Goodbye!"
        textLabel.text = textField.text
        textField.text = " "
        view.endEditing(true)
        
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello"
        view.backgroundColor = backGroundColor
        textLabel.textColor = UIColor.black
        
        
    }
}

