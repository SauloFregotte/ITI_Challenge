//
//  ContaModel.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

//Entity
class AccountModel{
    
    var id: Int = -1
    
    var accountNumber: String
    
    var agency: String
    
    var balance: Double
    
    var pixKey: [String]
    
    var user: User
    
    init(account: Account) {
        self.accountNumber = account.accountNumber
        self.agency = account.agency
        self.balance = account.balance
        self.pixKey = account.pixKey
        self.user = account.user
    }

    public func toAccount() ->Account{
        return Account(accountNumber, agency, balance, pixKey, user)
    }
    
}
