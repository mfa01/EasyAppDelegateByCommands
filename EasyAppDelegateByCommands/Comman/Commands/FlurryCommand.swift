//
//  FlurryCommand.swift
//  EasyAppDelegateByCommands
//
//  Created by Mabed on 16/05/2022.
//

import Foundation
import Flurry_iOS_SDK

class FlurryCommand: Command {
    
    func execute() {
        let sessionBuilder = FlurrySessionBuilder()
            .build(logLevel: .all)
            .build(crashReportingEnabled: true)
            .build(appVersion: "1.0")
            .build(iapReportingEnabled: true)
        Flurry.startSession(apiKey: "Your API Key", sessionBuilder: sessionBuilder)
        print("+++++++++++++++Flurry Started+++++++++++++++")
    }
}
