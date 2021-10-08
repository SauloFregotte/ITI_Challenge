//
//  RequestLoginDTO.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 08/10/21.
//

import Foundation

class LoginRequestDTO{
    
    private let login: String
    
    private let password: String
    
    init(_ login: String, _ password: String) {
        self.login = login
        self.password = password
    }

    public func selectUserLoginAndPassword(_ userOperation: UserOperations) -> User?{
        return userOperation.selectUserByLoginAndPassword(login, password)
    }
}
