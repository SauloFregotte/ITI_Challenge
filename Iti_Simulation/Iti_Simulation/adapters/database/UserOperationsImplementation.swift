//
//  UserOperationsImplementation.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class UserOperationsImplementation: UserOperations{
    
    private var listaUsuarioBD: [User] = []
    
    public func save(_ user: User) -> User{
        
        generateId(user)
        
        listaUsuarioBD.append(user)
        
        return user
    }
    
    private func generateId(_ user: User){
        user.id = listaUsuarioBD.count
    }
    
    public func selectUserByLoginAndPassword(_ login: String, _ password: String) -> [User]{
        return listaUsuarioBD.filter({return $0.login == login && $0.password == password})
    }
    
}
