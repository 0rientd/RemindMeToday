//
//  SecondViewController.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 06/06/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var settingsColor: UIImageView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsColor.layer.cornerRadius = 10
        settingsColor.layer.masksToBounds = true

    }
    
    @IBAction func changeColorButton(_ sender: Any) {
        
    }
    
}
