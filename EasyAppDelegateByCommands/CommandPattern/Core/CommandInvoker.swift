//
//  CommandExecuter.swift
//  EasyAppDelegateByCommands
//
//  Created by Mabed on 16/05/2022.
//

import Foundation

public class CommandInvoker {
    
    private let commands: [Command]
    
    init(_ commands: [Command]) {
        self.commands = commands
    }
    
    func execute() {
        for command in commands {
            command.execute()
        }
    }
}
