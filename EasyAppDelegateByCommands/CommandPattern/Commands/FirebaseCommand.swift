//
//  FirebaseCommand.swift
//  EasyAppDelegateByCommands
//
//  Created by Mabed on 16/05/2022.
//

import Foundation
import Firebase

class FirebaseCommand: Command {
    
    func execute() {
        FirebaseApp.configure()
        print("+++++++++++++++Firebase started+++++++++++++++")
    }
}
