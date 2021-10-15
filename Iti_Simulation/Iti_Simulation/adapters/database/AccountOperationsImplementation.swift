//
//  AccountOperationsImplementation.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class AccountOperationsImplementation: AccountOperations{
    
    private var listaAccountBD: [AccountModel] = []
    
    private func generateId(_ account: AccountModel){
        account.id = listaAccountBD.count
    }
    
    func findAccount(_ number: String, _ agency: String) -> Account? {
        return listaAccountBD
            .filter({return $0.accountNumber == number && $0.agency == agency})
            .first
            .map{$0.toAccount()}
    }
    
    func closeAccount(_ account: Account) {
        let accountModel = find(account.accountNumber, account.agency)
        /*nao controlo os ids, se na posicao 3 houver um id de numero 4 ele apagara, ja que nao atualizo as posicoes em relacao ao id
        [0,1,2,3,4,5] - 3 => [0,1,2,4,5]*/
        listaAccountBD.remove(at: accountModel.id)
    }
    
    func save(_ account: Account) -> Account {
        let accountModel = find(account.accountNumber, account.agency)
        
        accountModel.saveNewBalance(account.balance)
        generateId(accountModel)
        listaAccountBD.append(accountModel)
        return account
    }
    
    private func find(_ number: String, _ agency: String) -> AccountModel {
        return listaAccountBD
            .filter({return $0.accountNumber == number && $0.agency == agency})
            .first.unsafelyUnwrapped
    }
}
