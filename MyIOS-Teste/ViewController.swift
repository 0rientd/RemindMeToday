//
//  ViewController.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 20/05/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let toque: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(toque)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var dataHora: UIDatePicker!
    @IBOutlet weak var textFieldReminder: UITextField!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var outletButtonRemindMe: UIButton!
    @IBOutlet weak var ViewTextField: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var viewLogo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tempLabel.alpha = 0
        dataHora.alpha = 0
        
        let defaultColorUI = UserDefaults.standard.integer(forKey: "ValueColor")
        
        if defaultColorUI == 1 {
            mainView.backgroundColor = UIColor.lightGray
            viewLogo.backgroundColor = UIColor.lightGray
            ViewTextField.backgroundColor = UIColor.lightGray
            
        } else if defaultColorUI == 2 {
            mainView.backgroundColor = UIColor.systemTeal
            viewLogo.backgroundColor = UIColor.systemTeal
            ViewTextField.backgroundColor = UIColor.systemTeal
        }
        
        outletButtonRemindMe.layer.cornerRadius = 4
        tempLabel.layer.cornerRadius = 4
        tempLabel.layer.masksToBounds = true
        
        addShadow(thingToAddShadow: textFieldReminder)
        addShadow(thingToAddShadow: outletButtonRemindMe)
                
        let manager = NotificationManager()
        manager.RequestPermission()
        
        self.hideKeyboardWhenTappedAround()
        
    }
    
    func makeANotification(text: String, date: Double) {
        
        let notification = NotificationManager()
        notification.addNotification(textToRemind: text)
        
        notification.scheduleNotifications(remindMe: date)
        
    }
    
    func changeColor(){
        
        mainView.backgroundColor = customizationColorBackgroud.backgroundColor

    }
    
    @IBAction func remindMeButton(_ sender: Any) {
                
        let currentHour = Calendar.current.component(.hour, from: Date())
        let currentMinute = Calendar.current.component(.minute, from: Date())
        
        let date = dataHora.calendar.dateComponents([.hour, .minute], from: dataHora.date)
        
        let hourReminder = date.hour!
        let minuteReminder = date.minute!
        
        if (hourReminder <= currentHour && minuteReminder <= currentMinute || hourReminder < currentHour) {
            
            let alertaDeHoraIncorreta = UIAlertController(title: "Ops!", message: "Você deve escolher uma hora posterior a hora atual.", preferredStyle: .alert)
            
            alertaDeHoraIncorreta.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
                self.dataHora.setDate(Date(), animated: true)
            }))
            
            self.present(alertaDeHoraIncorreta, animated: true, completion: nil)
            
        } else if (minuteReminder > currentMinute) {
            
            var remindMe = hourReminder - currentHour
            remindMe = (remindMe * 60) * 60
            remindMe += (minuteReminder - currentMinute) * 60
            
            makeANotification(text: textFieldReminder.text ?? "", date: Double(remindMe))

            fadeIn(thingToFadeIn: tempLabel)
            fadeOut(thingToFadeOut: tempLabel)
            
        } else {
            
            var remindMe = hourReminder - currentHour
            remindMe = (remindMe * 60) * 60
            remindMe += (currentMinute - minuteReminder) * 60
            
            makeANotification(text: textFieldReminder.text ?? "", date: Double(remindMe))

            fadeIn(thingToFadeIn: tempLabel)
            fadeOut(thingToFadeOut: tempLabel)
            
        }
    }
    
    @IBAction func actionUITextField(_ sender: Any) {
        moveToTop(view: ViewTextField)
        fadeIn(thingToFadeIn: dataHora)
    }
    
    @IBAction func callSecondView(_ sender: Any) {
        let settings = storyboard?.instantiateViewController(identifier: "ColorPickBoard") as! Third_ViewController
        settings.colorDelegate = self
        present(settings, animated: true, completion: nil)
    }
}

extension ViewController: Teste {
    func returnView(view: UIView) {
        mainView.backgroundColor = customizationColorBackgroud.backgroundColor
        ViewTextField.backgroundColor = customizationColorBackgroud.backgroundColor
        viewLogo.backgroundColor = customizationColorBackgroud.backgroundColor
    }
}
