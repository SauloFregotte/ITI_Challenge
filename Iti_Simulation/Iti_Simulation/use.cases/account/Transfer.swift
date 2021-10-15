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
    
    public func transfer(_ accountRequest: AccountTransferRequest) throws -> AccountTransferResponse{

        let sourceAccount = accountRequest.selectAccountId(accountOperation)
        
        if(sourceAccount == nil){
            print("Source account not found!")
            throw RequestError.notFound
        }
        
        let destinationAccount = accountRequest.findDestinationAccount(accountOperation)
        
        if(sourceAccount == nil){
            print("Destination account not found!")
            throw RequestError.notFound
        }
        
        accountRequest.transfer(sourceAccount.unsafelyUnwrapped)
        
        accountRequest.deposit(destinationAccount.unsafelyUnwrapped)

        return accountRequest
            .response(
                accountOperation.save(sourceAccount.unsafelyUnwrapped), accountOperation.save(destinationAccount.unsafelyUnwrapped)
            )
    }
}
