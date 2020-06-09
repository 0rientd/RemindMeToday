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
    @IBOutlet weak var systemBackgroundOutlet: UIButton!
    @IBOutlet weak var moreSettingsOutlet: UIButton!
    @IBOutlet weak var orangeButtonOutlet: UIButton!
    @IBOutlet weak var pinkButtonOutlet: UIButton!
    @IBOutlet weak var customGreenOutlet: UIButton!
    var colorDelegate: returnViewProtocol! // referencia do procolo
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addCorner(button: lightGreyOutlet)
        addCorner(button: systemIndigoOutlet)
        addCorner(button: systemBackgroundOutlet)
        addCorner(button: orangeButtonOutlet)
        addCorner(button: pinkButtonOutlet)
        addCorner(button: customGreenOutlet)
        addShadow(thingToAddShadow: systemBackgroundOutlet)
        systemBackgroundOutlet.layer.borderWidth = 2
        systemBackgroundOutlet.layer.borderColor = UIColor.black.cgColor
        
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

    @IBAction func systemDefaultButton (_ sender: Any) {
        saveNumberColor(number: 3)
        
        customizationColorBackgroud.backgroundColor = UIColor.systemBackground
        colorDelegate.returnView(view: customizationColorBackgroud)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func orangeButton (_ sender: Any) {
        saveNumberColor(number: 4)
        
        customizationColorBackgroud.backgroundColor = UIColor.orange
        colorDelegate.returnView(view: customizationColorBackgroud)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pinkButton(_ sender: Any) {
        saveNumberColor(number: 5)
        
        customizationColorBackgroud.backgroundColor = UIColor.systemPink
        colorDelegate.returnView(view: customizationColorBackgroud)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func customGreenButton(_ sender: Any) {
        saveNumberColor(number: 6)
        
        customizationColorBackgroud.backgroundColor = #colorLiteral(red: 0.1254901961, green: 1, blue: 0.5333333333, alpha: 1)
        colorDelegate.returnView(view: customizationColorBackgroud)
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
