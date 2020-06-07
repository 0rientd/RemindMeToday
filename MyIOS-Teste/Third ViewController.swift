//
//  Third ViewController.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 07/06/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

class Third_ViewController: UIViewController {

    @IBOutlet weak var lightGreyOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lightGreyOutlet.layer.cornerRadius = 10
        lightGreyOutlet.layer.masksToBounds = true
        
    }
    
    @IBAction func lightGrayButton(_ sender: Any) {
        
        
        
    }
    

}
