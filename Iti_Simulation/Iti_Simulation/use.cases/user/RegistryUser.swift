//
//  RegistryUser.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 12/10/21.
//

import Foundation

class RegistryUser{
    
    let userOperation: UserOperations
    
    init(_ uOp: UserOperations) {
        self.userOperation = uOp
    }
    
    public func registryUser(_ userRequest: UserRegistryRequest) throws -> User{
        
        let userLogged = userRequest.selectUser(userOperation)
        
        if(userLogged != nil){
            print("User already exists!")
            throw RequestError.alreadyExists
        }
        
        return userRequest.registry(userOperation)
    }
}
