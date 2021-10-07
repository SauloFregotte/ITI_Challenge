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
    
    private var dateOfOpening: Date
    
    private var balance: Double
    
    var user: User
    
    init(account: Account) {
        self.dateOfOpening = account.dateOfOpening
        self.balance = account.balance
        self.user = account.user
    }
    
    public func toAccount(){
        
    }
    
}
