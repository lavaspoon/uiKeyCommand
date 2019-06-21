//
//  ViewController.swift
//  uiKeyCommand
//
//  Created by lavaspoon on 22/06/2019.
//  Copyright © 2019 lavaspoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let test1KeyCommand = UIKeyCommand(input: "t", modifierFlags: .command, action: #selector(printTest))
        addKeyCommand(test1KeyCommand)
        
        let test2KeyCommand = UIKeyCommand(input: "1", modifierFlags: .alternate, action: #selector(printNumberOne))
        addKeyCommand(test2KeyCommand)
    }
    @objc private func printNumberOne(){
        Label.text = "1"
    }
    @objc private func printTest(){
        Label.text = "test"
    }

}

