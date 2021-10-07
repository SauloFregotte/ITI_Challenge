//
//  AccountDataBase.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 07/10/21.
//

import Foundation

protocol AccountOperations {
    
    func openAccount()
    
    func closeAccount(_ user: User)
    
    func consultInformation()
    
    func pixKeyRegistry()
    
    func transference()
    
    func deposit()
    
}
