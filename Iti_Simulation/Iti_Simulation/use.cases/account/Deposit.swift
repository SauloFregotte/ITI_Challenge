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
    
    public func deposit(_ accountRequestDto: AccountRequestDTO) -> Account{
        
        let account = accountRequestDto.selectAccount()
        let user = account.
        
        
        if(){
            
        }
        
        return accountOperation.saveOperation(account)
    }
}
