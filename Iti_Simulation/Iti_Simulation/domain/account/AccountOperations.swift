//
//  AccountDataBase.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 07/10/21.
//

import Foundation

protocol AccountOperations {
    
    func findAccount(_ number: String, _ agency: String) -> Account?
    
    func saveOperation(_ account: Account) -> Account
    
    func closeAccount(_ account: Account)
    
//    func openAccount()
//
//    func consultInformation(_ user: User)
//
//    func pixKeyRegistry(_ pixKey: String)
//
//    func transference()
}
