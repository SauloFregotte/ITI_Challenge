//
//  AccountTransferResponse.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 15/10/21.
//

import Foundation

class AccountTransferResponse{
    
    private let sourceAccount: Account
    private let destinationAccount: Account
    private let value: Double
    
    init(_ sA: Account, _ dA: Account, _ value: Double) {
        self.sourceAccount = sA
        self.destinationAccount = dA
        self.value = value
    }
    
    public func toString(){
        print("The value: \(value), was transfered from: \(sourceAccount), to: \(destinationAccount)")
    }
}
