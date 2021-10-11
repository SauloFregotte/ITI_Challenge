//
//  UserOperationsImplementation.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class UserOperationsImplementation: UserOperations{

    private var listaUsuarioBD: [UserModel] = []
    
    private func generateId(_ userModel: UserModel){
        userModel.id = listaUsuarioBD.count
    }

    public func save(_ user: User) -> User{
        let userModel = UserModel(user)
        
        generateId(userModel)
        listaUsuarioBD.append(userModel)
        return user
    }
    
    func selectUser(_ id: Int) -> User?{
        return listaUsuarioBD
            .filter({return $0.id == id})
            .first
            .map{$0.toUser()}
    }

    public func selectUserByLoginAndPassword(_ login: String, _ password: String) -> User?{
        return listaUsuarioBD
            .filter({return $0.login == login && $0.password == password})
            .first
            .map{$0.toUser()}
    }
    
}
