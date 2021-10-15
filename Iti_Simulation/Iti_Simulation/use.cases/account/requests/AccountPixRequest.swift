//
//  AccountPixRequest.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 12/10/21.
//

import Foundation

class AccountPixRequest{
    
    private let pixKeyEntry: String
    
    private let id: Int
    
    init(_ pKe: String, _ id: Int){
        self.pixKeyEntry = pKe
        self.id = id
    }
    
    public func selectAccountId(_ accountOperation: AccountOperations)-> Account?{
        return accountOperation.selectAccountById(id)
    }
    
    public func registryKey(_ account: Account){
        account.registryPixKey(pixKeyEntry)
    }
}
