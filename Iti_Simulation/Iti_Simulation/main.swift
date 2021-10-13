//
//  main.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

let options: [String : Account] = [:]

let userOperations = UserOperationsImplementation()
let accountOperations = AccountOperationsImplementation()
let depositing = Deposit(accountOperations, userOperations)
//Chamada de deposito
printAccount(
    try depositing.deposit(
        accountRequest()
    )
)
    
    func accountRequest() -> AccountRequest{

        print("Entre a sua conta.")
        let accountNumber = readLine().unsafelyUnwrapped
        print("Entre a sua agencia.")
        let agency = readLine().unsafelyUnwrapped
        print("Entre o valor da operacao.")
        let value = Double(readLine().unsafelyUnwrapped).unsafelyUnwrapped
        
        return AccountRequest(accountNumber, agency, value)
    }
    
    func userRequest() -> UserRequest{
        
        print("Entre com seu login: ")
        let login = readLine().unsafelyUnwrapped
        print("Entre com sua senha: ")
        let password = readLine().unsafelyUnwrapped
        
        return UserRequest(login, password)
    }
    
    func printAccount(_ account: Account){
        print("Account Number: \(account.accountNumber)")
        print("Agency: \(account.agency)")
        print("Balance: \(account.balance)")
    }
    
    func printUser(_ user: User){
        print("User Name: \(user.username)")
        print("Address: \(user.address)")
        print("Login: \(user.login)")
    }
