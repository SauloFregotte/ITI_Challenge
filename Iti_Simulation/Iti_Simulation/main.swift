//
//  main.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

print("Ola mundo")

let accountOp: AccountOperations = AccountOperationsImplementation()

var account: Account = Account(Date.init(), 2.2, User.builder().build())

account.consultInformation(accountOp)
