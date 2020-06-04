//
//  LocalNotification.swift
//  RemindMeToday
//
//  Created by Carlos Henrique on 21/05/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UserNotifications

struct Notification {
    
    var id: String
    var title: String = "RemindMeToday to do"
    var textToRemind: String
    
}

class NotificationManager {
    
    var notifications = [Notification]()
    
    func RequestPermission() -> Void {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
                
                if granted == true && error == nil {
                    
                }
        }
    }
    
    func addNotification(textToRemind: String) -> Void {
        notifications.append(Notification(id: UUID().uuidString, textToRemind: textToRemind))
        
    }
    
    func scheduleNotifications(remindMe: Double) -> Void {
        for notification in notifications {
            let content = UNMutableNotificationContent()
            content.title = notification.title
            content.body = notification.textToRemind
            content.sound = UNNotificationSound.default
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: remindMe, repeats: false)
            let request = UNNotificationRequest(identifier: notification.id, content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(request) { error in
                guard error == nil else { return }
//                print("Scheduling notification with id: \(notification.id)")
            }
        }
    }
    
}
