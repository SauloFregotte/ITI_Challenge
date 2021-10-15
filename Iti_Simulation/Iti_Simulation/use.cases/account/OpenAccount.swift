//
//  OpenAccount.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 10/10/21.
//

import Foundation

class OpenAccount{
    
    let accountOperation: AccountOperations
    
    init(_ aOp: AccountOperations) {
        self.accountOperation = aOp
    }
    
    public func openingAccount(_ accountRequest: AccountOpenRequest) throws -> Account{
        
        let account = accountRequest.selectAccountBindToUser(accountOperation)
        
        if(account != nil){
            print("The user already has an account!")
            throw RequestError.alreadyExists
        }
        return accountRequest.createAccount(accountOperation)
    }
}


