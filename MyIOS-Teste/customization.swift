//
//  customization.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 05/06/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

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
