//
//  Account.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class Account{
    
    var accountNumber: Int
    
    var agency: Int
    
    var balance: Double
    
    var user: User
    
    //Builder
    init( _ balance: Double, _ user: User, _ accountNumber: Int, _ agency: Int) {
        self.balance = balance
        self.user = user
        self.accountNumber = accountNumber
        self.agency = agency
    }
    
    func openAccount(_ accountOperation: AccountOperations){
        accountOperation.openAccount()
    }
    
    func closeAccount(_ accountOperation: AccountOperations){
        accountOperation.closeAccount(user)
    }
    
    func consultInformation(_ accountOperation: AccountOperations){
        accountOperation.consultInformation()
    }
    
    func pixKeyRegistry(_ accountOperation: AccountOperations){
        accountOperation.pixKeyRegistry()
    }
    
    func transference(_ accountOperation: AccountOperations){
        accountOperation.transference()
    }
    
    func deposit(_ accountOperation: AccountOperations){
        accountOperation.deposit()
    }
    
    func isValidAccount(_ accountNumber: Int, _ agency: Int) -> Bool{
        if(self.accountNumber == accountNumber && self.agency == agency){
            return true
        }
        return false
    }
}
