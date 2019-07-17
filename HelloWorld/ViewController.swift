//
//  ViewController.swift
//  HelloWorld
//
//  Created by weiyongming on 2019/7/17.
//  Copyright © 2019 jam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTestT: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonEvent(_ sender: UIButton) {
        labelTestT.text="Buile! Best Match!";
    }
    
}

