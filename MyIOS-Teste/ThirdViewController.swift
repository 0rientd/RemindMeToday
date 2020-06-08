//
//  Third ViewController.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 07/06/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

protocol returnViewProtocol {
    func returnView(view: UIView)
}

class Third_ViewController: UIViewController {

    @IBOutlet weak var lightGreyOutlet: UIButton!
    @IBOutlet weak var systemIndigoOutlet: UIButton!
    @IBOutlet weak var moreSettingsOutlet: UIButton!
    var colorDelegate: returnViewProtocol! // referencia do procolo
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addCorner(button: lightGreyOutlet)
        addCorner(button: systemIndigoOutlet)
        
        moreSettingsOutlet.layer.cornerRadius = 4
        addShadow(thingToAddShadow: moreSettingsOutlet)
        
                
    }
    
    @IBAction func lightGrayButton(_ sender: Any) {
        saveNumberColor(number: 1)
        
        customizationColorBackgroud.backgroundColor = UIColor.lightGray
        colorDelegate.returnView(view: customizationColorBackgroud) // 
        dismiss(animated: true, completion: nil)
        
    }

    @IBAction func indigoButton (_ sender: Any) {
        saveNumberColor(number: 2)
        
        customizationColorBackgroud.backgroundColor = UIColor.systemTeal
        colorDelegate.returnView(view: customizationColorBackgroud)
        dismiss(animated: true, completion: nil)
        
    }


}
