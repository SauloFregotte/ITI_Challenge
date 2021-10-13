//
//  Transfer.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 10/10/21.
//

import Foundation

class Transfer{
    let accountOperation: AccountOperations
    
    init(_ aOp: AccountOperations){
        self.accountOperation = aOp
    }
    
    public func transfer(_ accountRequest: AccountOpenTransferRequest) throws -> Account{
        
    }
}
