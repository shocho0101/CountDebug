//
//  ViewController.swift
//  CountDebug
//
//  Created by 張翔 on 2019/11/06.
//  Copyright © 2019 張翔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus() {
        count += 1
        label.text = String(count)
        updateLabel()
    }
    
    @IBAction func minus() {
        count -= 1
        label.text = String(count)
        updateLabel()
    }
    
    func updateLabel() {
        if count >= 100 {
            label.textColor = .red
        }
        
        if count >= 0 {
            label.textColor = .black
        }
        
        if count < 0 {
            label.textColor = .blue
            count -= 1
        }
    }


}

