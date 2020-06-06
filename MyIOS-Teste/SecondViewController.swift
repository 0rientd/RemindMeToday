//
//  SecondViewController.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 06/06/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var labelTeste: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func toggleTeste(_ sender: Any) {
        
        if labelTeste.backgroundColor == UIColor.red {
            
            labelTeste.backgroundColor = UIColor.systemBackground
            
        } else {
            
            labelTeste.backgroundColor = UIColor.red
        
        }
        
    }
    
}
