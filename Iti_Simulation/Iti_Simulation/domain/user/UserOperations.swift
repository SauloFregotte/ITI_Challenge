//
//  UserOperations.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 07/10/21.
//

import Foundation

protocol UserOperations {
    
    func save(_ user: User) -> User
    
    func selectUserByLoginAndPassword(_ login: String, _ password: String) -> [User]
    
}
