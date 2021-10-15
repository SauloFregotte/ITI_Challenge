//
//  AccountOpenTransferRequest.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 12/10/21.
//

import Foundation


class AccountTransferRequest{
    
    private let sourceAccountId: Int
    
    private let destinationAccountNumber: String
    
    private let destinationAgency: String
    
    private let user: User
    
    private let value: Double
    
    //Builder
    init(_ dAn: String, _ dA: String, _ user: User, _ value: Double, _ sAid: Int){
        self.sourceAccountId = sAid
        self.destinationAccountNumber = dAn
        self.destinationAgency = dA
        self.user = user
        self.value = value
    }
    
    public func selectAccountId(_ accountOperation: AccountOperations)-> Account?{
        return accountOperation.selectAccountById(sourceAccountId)
    }
    
    public func findDestinationAccount(_ accountOperation: AccountOperations) -> Account?{
        return accountOperation.findAccount(destinationAccountNumber, destinationAgency)
    }
    
    public func deposit(_ account: Account){
        account.deposit(value)
    }
    
    public func transfer(_ account: Account){
        account.transference(value)
    }
    
    public func response(_ sourceAccount: Account, _ destinationAccount: Account) -> AccountTransferResponse{
        return AccountTransferResponse(sourceAccount, destinationAccount, value)
    }
}
