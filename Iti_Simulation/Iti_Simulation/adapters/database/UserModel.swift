//
//  UserModel.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 07/10/21.
//

import Foundation
//Entity
class UserModel{
    
    var id: Int = -1
    
    var username: String
    
    var documentNumber: String
    
    var address: String
    
    var login: String
    
    var password: String
    
    init(_ user: User) {
        self.username = user.username
        self.documentNumber = user.documentNumber
        self.address = user.address
        self.login = user.login
        self.password = user.password
    }
    
    public func toUser() -> User{
        return User.builder()
            .called(username)
            .withDocumentNumber(documentNumber)
            .living(at: address)
            .withLogin(login)
            .withPassword(password)
            .build()
    }
    
}
