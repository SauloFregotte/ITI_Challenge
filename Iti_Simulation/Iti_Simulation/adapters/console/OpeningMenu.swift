//
//  OpeningMenu.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 15/10/21.
//

import Foundation

class OpeningMenu{
    
    public func menu(){
        
        print("Bem vindo ao ITI do Itau! Escolha uma opcao abaixo:")
        print("1 - LogIn")
        print("2 - Registry user")
        print("3 - Exit")
        
        let option = readLine()

        let requestUser = UserRequetInformationMenu()

        let options: [String : Void] = ["1": requestUser.menuLogin(),
                                        "2": requestUser.menuRegistry(),
                                        "3": print("Saindo da aplicacao.")]

        options[option ?? "3"]
    }
}
