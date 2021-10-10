//
//  ConsultInformation.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 09/10/21.
//

import Foundation

class ConsultInformation{
    
    let accountOperation: AccountOperations
    
    init(_ aOp: AccountOperations){
        self.accountOperation = aOp
    }
    
    public func consult(_ accountRequest: AccountRequest) throws -> Account{
        
        let account = accountRequest.selectAccount(accountOperation)
        
        if(account == nil){
            print("Account not found!")
            throw RequestError.notFound
        }
        
        if(!accountRequest.validAccount(account.unsafelyUnwrapped)){
            print("Account not valid!")
            throw RequestError.notFound
        }

        return account.unsafelyUnwrapped
    }
}
