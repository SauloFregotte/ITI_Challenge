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
    
    func closeAccount() -> Bool{
        
        if(balance == 0){
            print("Your acconut is beeing closed.")
            return true
        }else{
            print("Your account cannot be closed please tranfers the remaining money or pay your debt before closing it.")
            return false
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
