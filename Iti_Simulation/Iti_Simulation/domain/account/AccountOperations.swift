//
//  AccountDataBase.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 07/10/21.
//

import Foundation

protocol AccountOperations {
    
    func openAccount()
    
    func closeAccount(_ account: Account)
    
    func consultInformation(_ user: User)
    
    func pixKeyRegistry(_ pixKey: String)
    
    func transference()
    
    func deposit()
    
    func findAccount(_ number: String, _ agency: String) -> Account
    
}
