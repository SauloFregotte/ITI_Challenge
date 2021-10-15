//
//  OpenAccount.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 10/10/21.
//

import Foundation

class OpenAccount{
    
    let accountOperation: AccountOperations
    let userOperation: UserOperations
    
    init(_ aOp: AccountOperations, _ uOp: UserOperations) {
        self.accountOperation = aOp
        self.userOperation = uOp
    }
    
    public func openingAccount(_ accountRequest: AccountTransferRequest) throws -> Account{
        
        // see if there is an account already opened, bind the user to the account
        
        return accountOperation.
        
    }
    
}


