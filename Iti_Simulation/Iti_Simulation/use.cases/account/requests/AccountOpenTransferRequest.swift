//
//  AccountOpenTransferRequest.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 12/10/21.
//

import Foundation


class AccountOpenTransferRequest{
    
    private let accountNumber: String
    
    private let agency: String
    
    private let user: User
    
    init(_ accountNumber: String, _ agency: String, _ user: User){
        self.accountNumber = accountNumber
        self.agency = agency
        self.user = user
    }
    
}
