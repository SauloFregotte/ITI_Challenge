//
//  Account.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class Account{
    
    var accountNumber: String
    
    var agency: String
    
    var balance: Double
    
    var pixKey: [String]
    
    var user: User
    
    //Builder
    init( _ accountNumber: String, _ agency: String, _ balance: Double, _ pixKey: [String], _ user: User) {
        self.balance = balance
        self.user = user
        self.accountNumber = accountNumber
        self.agency = agency
        self.pixKey = pixKey
    }
    
    func registryPixKey(_ pixK: String){
        let exists = pixKey.firstIndex(of: pixK)
        
        if(exists != nil){
            print("The PixKey already exists, please insert another value for creating a new key.")
        }else{
            pixKey.append(pixK)
        }
    }
    
    func closeAccount(_ accountOperation: AccountOperations){
        switch balance {
        case _ where balance > 0:
            print("Please transfer the remaining money to another account.")
        case _ where balance < 0:
            print("The balance of your account is currently negative, please pay of your debt before closing it.")
        default:
            print("Your acconut is beeing closed.")
            accountOperation.closeAccount(self)
        }
    }

    func transference(_ value: Double){
        if(value <= balance){
            balance = balance - value
        }else{
            print("Balance must be bigger than the value.")
        }
    }
    
    func deposit(_ value: Double){
        if(value > 0){
            balance = balance + value
        }else{
            print("Value must be bigger than 0.")
        }
    }
    
    func isValidAccount(_ accountNumber: String, _ agency: String) -> Bool{
        if(self.accountNumber == accountNumber && self.agency == agency){
            return true
        }
        return false
    }
}
