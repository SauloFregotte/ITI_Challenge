//
//  AccountOpenRequest.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 14/10/21.
//

import Foundation

class AccountOpenRequest{
    
    private let user: User
    
    init(_ user: User) {
        self.user = user
    }
    
    public func selectAccountBindToUser(_ accountOperation: AccountOperations)-> Account?{
        return accountOperation.findAccountByUser(user)
    }
    
    public func createAccount(_ accountOperation: AccountOperations) -> Account{
        return accountOperation.openAccount(user)
    }
}
