//
//  CloseAccount.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 10/10/21.
//

import Foundation

class CloseAccount{
    
    let accountOperation: AccountOperations
    let userOperation: UserOperations

    init(_ aOp: AccountOperations, _ uOp: UserOperations) {
        self.accountOperation = aOp
        self.userOperation = uOp
    }

    public func closeAccount(_ accountRequest: AccountRequest) throws{
        
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
        
        let isClosable = account.unsafelyUnwrapped.closeAccount()
        
        if(!isClosable){
            print("Cannot close the account")
            throw RequestError.notFound
        }

        accountOperation.closeAccount(account.unsafelyUnwrapped)
        print("Account closed.")
        
    }
}
