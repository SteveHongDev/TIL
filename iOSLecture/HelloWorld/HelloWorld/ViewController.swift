//
//  ViewController.swift
//  HelloWorld
//
//  Created by 홍성범 on 2021/06/11.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func updateLabel(_ sender: Any) {
        
        label.text = "Hello, iOS"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

