//
//  AccountMenu.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 15/10/21.
//

import Foundation

class AccountMenu{
    
    public func menu(){
        
        print("Bem vindo ao acesso de conta! Escolha uma opcao abaixo:")
        print("1 - LogIn")
        print("2 - Registrar account")
        print("3 - Exit")
        
        let option = readLine()

        let requestAccount = AccountRequestInformationRequest()

        let options: [String : Void] = ["1": requestAccount.x(),
                                        "2": requestAccount.x(),
                                        "3": print("Saindo da aplicacao.")]

        options[option ?? "3"]
    }
}
