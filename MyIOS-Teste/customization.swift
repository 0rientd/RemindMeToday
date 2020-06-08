//
//  customization.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 05/06/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

var customizationColorBackgroud = UIView()

func saveNumberColor(number: Int){
    UserDefaults.standard.set(number, forKey: "ValueColor")
        
}

func addShadow(thingToAddShadow: UIView){
    thingToAddShadow.layer.shadowColor = UIColor.systemGray.cgColor
    thingToAddShadow.layer.shadowOffset = CGSize(width: 0, height: 1)
    thingToAddShadow.layer.shadowOpacity = 1
    thingToAddShadow.layer.shadowRadius = 7
    thingToAddShadow.layer.masksToBounds = false
    
}

func fadeIn(thingToFadeIn: UIView){
    UIView.animate(withDuration: 0.75, animations: {
        thingToFadeIn.alpha = 1
    })
    
}

func fadeOut(thingToFadeOut: UIView){
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
        UIView.animate(withDuration: 1.5, animations: {
            thingToFadeOut.alpha = 0
        })
    })
}

func moveToTop(view: UIView){
    UIView.animate(withDuration: 1.2, animations: {
        view.frame.origin.y = 280
    })
    
}

func addCorner(button: UIView){
    button.layer.cornerRadius = 10
    button.layer.masksToBounds = true
    
}

func changeColorBackgroundView (numberDefault: Int) -> UIColor {
    
    switch numberDefault {
    case 1:
        return UIColor.lightGray
        
    case 2:
        return UIColor.systemTeal
        
    default:
        return UIColor.systemBackground
    }
    
}

func changeColorBackgroundLogo (numberDefault: Int) -> UIColor {
    
    switch numberDefault {
    case 1:
        return UIColor.lightGray
        
    case 2:
        return UIColor.systemTeal
        
    default:
        return UIColor.systemBackground
    }
    
}

func changeColorBackgroundTextField (numberDefault: Int) -> UIColor {
    
    switch numberDefault {
    case 1:
        return UIColor.lightGray
        
    case 2:
        return UIColor.systemTeal
        
    default:
        return UIColor.systemBackground
    }
    
}
