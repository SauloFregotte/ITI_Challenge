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
    
    public func openingAccount(_ accountRequest: AccountOpenTransferRequest) throws -> Account{
        
    }
    
}


