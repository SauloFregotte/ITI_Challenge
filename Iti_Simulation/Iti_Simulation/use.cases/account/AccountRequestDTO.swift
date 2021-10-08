//
//  RequestDTO.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 08/10/21.
//

import Foundation

class AccountRequestDTO{
    
    private let userId: Int
    
    private let accountNumber: String
    
    private let agency: String
    
    private let value: Double
    
    //Builder
    init(_ userId: Int, _ accountNumber: String, _ agency: String, _ value: Double) {
        self.userId = userId
        self.accountNumber = accountNumber
        self.agency = agency
        self.value = value
    }
    
    public func selectUser(_ userOperation: UserOperations) -> User?{
        return userOperation.selectUser(userId)
    }
    
    public func selectAccount(_ accountOperation: AccountOperations)-> Account?{
        return accountOperation.findAccount(accountNumber, agency)
    }
    
    public func validAccount(_ account: Account) ->Bool{
        return account.isValidAccount(accountNumber, agency)
    }
}
