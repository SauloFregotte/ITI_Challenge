//
//  AccountOpenRequest.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 14/10/21.
//

import Foundation

class AccountOpenRequest{
    
    private let accountNumber: String
    
    private let agency: String
    
    private let user: User
    
    init(_ acNumber: String, _ agency: String, _ user: User) {
        self.accountNumber = acNumber
        self.agency = agency
        self.user = user
    }
}
