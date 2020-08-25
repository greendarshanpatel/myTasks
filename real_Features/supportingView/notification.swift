//
//  notification.swift
//  real_Features
//
//  Created by Darshan on 2020-08-21.
//  Copyright ©️ 2020 DarshanPatel. All rights reserved.
//

import SwiftUI

struct notification: View {
    var body: some View {
       Button("Send Notification") {
          // User authorization
          UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])  {
                success, error in
                    if success {
                        print("authorization granted")
                    } else if error != nil{
                        }
        // Content of the notification with UNMutableNotificationContent
            let content = UNMutableNotificationContent()
                content.title = "Notification"
                content.body = " Notification triggered"
                content.sound = UNNotificationSound.default
                   
            
                   
      // Adding notification
           let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
           let request = UNNotificationRequest(identifier: "local notification", content: content, trigger: trigger)
        
        
            UNUserNotificationCenter.current().add(request)
        }
    }
}

struct notification_Previews: PreviewProvider {
    static var previews: some View {
        notification()
    }
}
}
