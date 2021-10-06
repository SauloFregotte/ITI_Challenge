//
//  Conta.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class Account{
    
    private var id: Int = 0
    
    private var dateOfOpening: Date
    
    private var balance: Double
    
    private var user: User
    
    init(dateOfOpening: Date, balance: Double, user: User) {
        self.dateOfOpening = dateOfOpening
        self.balance = balance
        self.user = user
    }
    
    //TODO: abrirconta / fecharconta / consultainfo / cadastroCahvepix / transferencia / deposito
}
