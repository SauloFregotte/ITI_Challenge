//
//  Login.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 08/10/21.
//

import Foundation

class Login{
    
    private let userOperation: UserOperations
    
    init(_ uOp: UserOperations) {
        self.userOperation = uOp
    }
    
    public func logIn(_ userRequest: UserRequest) throws -> User{
        
        let userLogged = userRequest.selectUser(userOperation)
        
        if(userLogged == nil){
            print("User not found!")
            throw RequestError.notFound
        }
        return userLogged.unsafelyUnwrapped
    }
}
