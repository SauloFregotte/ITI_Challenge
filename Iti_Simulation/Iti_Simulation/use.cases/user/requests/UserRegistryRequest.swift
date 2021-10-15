//
//  UserRegistryRequest.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 13/10/21.
//

import Foundation

class UserRegistryRequest{
    
    private let username: String
    
    private let documentNumber: String
    
    private let address: String
    
    private let login: String
    
    private let password: String
    
    //Builder
    init(_ username: String, _ docNumber: String, _ address: String, _ login: String, _ password: String) {
        self.username = username
        self.documentNumber = docNumber
        self.address = address
        self.login = login
        self.password = password
    }
    
    public func selectUser(_ userOperation: UserOperations) -> User?{
        return userOperation.selectUserByLoginAndPassword(login, password)
    }
    
    public func registry(_ userOp: UserOperations) -> User{
        userOp.save(
            User.builder()
                .called(username)
                .withDocumentNumber(documentNumber)
                .living(at: address)
                .withLogin(login)
                .withPassword(password)
                .build()
        )
    }
}
