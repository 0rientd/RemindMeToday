//
//  Third ViewController.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 07/06/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

protocol Teste {
    func returnView(view: UIView)
}

class Third_ViewController: UIViewController {

    @IBOutlet weak var lightGreyOutlet: UIButton!
    @IBOutlet weak var systemIndigoOutlet: UIButton!
    var colorDelegate: Teste!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addCorner(button: lightGreyOutlet)
        addCorner(button: systemIndigoOutlet)
        
                
    }
    
    @IBAction func lightGrayButton(_ sender: Any) {
        customizationColorBackgroud.backgroundColor = UIColor.lightGray
        colorDelegate.returnView(view: customizationColorBackgroud)
        print("Changed the colot to Light Gray")
        dismiss(animated: true, completion: nil)
        
    }

    @IBAction func indigoButton (_ sender: Any) {
        customizationColorBackgroud.backgroundColor = UIColor.systemIndigo
        colorDelegate.returnView(view: customizationColorBackgroud)
        print("Changed the colot to Light Gray")
        dismiss(animated: true, completion: nil)
        
    }


}
