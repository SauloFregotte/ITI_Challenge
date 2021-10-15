//
//  RegistryPixKey.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 10/10/21.
//

import Foundation

class RegistryPixKey{
    
    let accountOperation: AccountOperations
    
    init(_ aOp: AccountOperations){
        self.accountOperation = aOp
    }
    
    public func registry(_ accountRequest: AccountPixRequest) throws -> Account{
        
        let account = accountRequest.selectAccountId(accountOperation)
        
        if(account == nil){
            print("Account not found!")
            throw RequestError.notFound
        }
        
        accountRequest.registryKey(account.unsafelyUnwrapped)
        
        return accountOperation.save(account.unsafelyUnwrapped)
    }
}
