//
//  AccountOpenTransferRequest.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 12/10/21.
//

import Foundation


class AccountTransferRequest{
    
    private let accountNumber: String
    
    private let agency: String
    
    private let user: User
    
    private let value: Double
    
    //Builder
    init(_ accountNumber: String, _ agency: String, _ user: User, _ value: Double){
        self.accountNumber = accountNumber
        self.agency = agency
        self.user = user
        self.value = value
    }
    
}
