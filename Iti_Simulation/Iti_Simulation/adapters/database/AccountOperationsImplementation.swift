//
//  AccountOperationsImplementation.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class AccountOperationsImplementation: AccountOperations{
    
    private var listaAccountBD: [AccountModel] = []
    
    private func generateId(_ account: AccountModel){
        account.id = listaAccountBD.count
    }
    
    func openAccount() {
        <#code#>
    }
    
    func closeAccount(_ user: User) {
        <#code#>
    }
    
    func consultInformation() {
        print("ok")
    }
    
    func pixKeyRegistry() {
        <#code#>
    }
    
    func transference() {
        <#code#>
    }
    
    func deposit() {
        <#code#>
    }
}
