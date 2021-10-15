//
//  Deposit.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 08/10/21.
//

import Foundation

class Deposit{
    
    let accountOperation: AccountOperations
    let userOperation: UserOperations
    
    init(_ aOp: AccountOperations, _ uOp: UserOperations) {
        self.accountOperation = aOp
        self.userOperation = uOp
    }
    
    public func deposit(_ accountRequest: AccountRequest) throws -> Account{
        
        let account = accountRequest.selectAccount(accountOperation)
        
        if(account == nil){
            print("Account not found!")
            throw RequestError.notFound
        }
        
        if(!accountRequest.validAccount(account.unsafelyUnwrapped)){
            print("Account not valid!")
            throw RequestError.notValid
        }
        
        let user = account?.user
        
        if(user == nil){
            print("User not found!")
            throw RequestError.notFound
        }
        
        accountRequest.deposit(account.unsafelyUnwrapped)
        
        return accountOperation.save(account.unsafelyUnwrapped)
    }
}
