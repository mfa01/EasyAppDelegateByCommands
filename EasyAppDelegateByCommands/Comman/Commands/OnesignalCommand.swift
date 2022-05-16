//
//  OnesignalCommand.swift
//  EasyAppDelegateByCommands
//
//  Created by Mabed on 16/05/2022.
//

import Foundation
import UIKit
import OneSignal

class OnesignalCommand: Command {
    
    private let launchOptions: [UIApplication.LaunchOptionsKey: Any]?
        
    public init(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        self.launchOptions = launchOptions
    }
        
    public func execute() {
        
        OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)
        // OneSignal initialization
        OneSignal.initWithLaunchOptions(launchOptions)
        OneSignal.setAppId("YOUR_ONESIGNAL_APP_ID")
        // promptForPushNotifications will show the native iOS notification permission prompt.
        // We recommend removing the following code and instead using an In-App Message to prompt for notification permission (See step 8)
        OneSignal.promptForPushNotifications(userResponse: { accepted in
            print("User accepted notifications: \(accepted)")
        })
        
        print("+++++++++++++++Onesignal Started+++++++++++++++")
    }
}
