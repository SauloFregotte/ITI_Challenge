//
//  RequestDTO.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 08/10/21.
//

import Foundation

class AccountRequest{
    
    private let accountNumber: String
    
    private let agency: String
    
    private let value: Double
    
    init(_ accountNumber: String, _ agency: String, _ value: Double) {
        self.accountNumber = accountNumber
        self.agency = agency
        self.value = value
    }
    
    public func selectAccount(_ accountOperation: AccountOperations)-> Account?{
        return accountOperation.findAccount(accountNumber, agency)
    }
    
    public func validAccount(_ account: Account) -> Bool{
        return account.isValidAccount(accountNumber, agency)
    }
    
    public func deposit(_ account: Account){
        account.deposit(value)
    }
}
