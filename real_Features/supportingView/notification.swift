//
//  notification.swift
//  real_Features
//
//  Created by Darshan on 2020-08-21.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI
///The UNUserNotificationCenter manages the notification-related activities. To use the notification the user needs to be asked for permission with the requestAuthorization method.

///The UNMutableNotificationContent object contains the data of the notification.

///The UNNotificationAttachment object contains the media content of the notification.

///An UNNotificationRequest is generated which will trigger at the timeinterval of 10 seconds.

///The notification is scheduled for delivery.

struct notification: View {
    var body: some View {
       Button("Send Notification") {
          // 1.
          UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])  {
                success, error in
                    if success {
                        print("authorization granted")
                    } else if error != nil{
                        }
            // 2.
            let content = UNMutableNotificationContent()
                content.title = "Notification"
                content.subtitle = "from buttonPressEvent"
                content.body = " Notification triggered"
                content.sound = UNNotificationSound.default
                   
            // 3.
            let imageName = "SpringerTreePark"
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "jpg") else{return}
            
            let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
            
            content.attachments = [attachment]
                   
            // 4.
           let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
           let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        
           // 5.
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
