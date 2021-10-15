//
//  AccountDataBase.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 07/10/21.
//

import Foundation

protocol AccountOperations {
    
    func findAccount(_ number: String, _ agency: String) -> Account?
    
    func findAccountByUser(_ user: User) ->Account?
    
    func save(_ account: Account) -> Account
    
    func closeAccount(_ account: Account)
    
    func selectAccountById(_ id: Int) -> Account?
    
    func openAccount(_ user: User) -> Account
}
