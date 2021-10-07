//
//  User.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

//Entity / Model / Business
class User{
    
    public static func builder() -> Builder{
        return Builder()
    }
    
    var id: Int = -1
    
    private var username: String
    
    private var documentNumber: String
    
    private var address: String
    
    var login: String
    
    var password: String
    
    init(_ builder: Builder) {
        self.username = builder.username
        self.documentNumber = builder.documentNumber
        self.address = builder.address
        self.login = builder.login
        self.password = builder.password
    }
    
    public func registryUser(_ userOperation: UserOperations) -> User{
        return userOperation.save(self)
    }
    
    public func verifyUserLogin(_ userOperation: UserOperations,
                                login: String, password: String) -> Bool{
        let user = userOperation.selectUserByLoginAndPassword(login, password)
        
        if(user.count >= 0 && user.count < 2){
            return true
        }
        return false
    }
    
    class Builder{
        
        fileprivate init() {}
        
        fileprivate var username: String = ""
        fileprivate var documentNumber: String = ""
        fileprivate var address: String = ""
        fileprivate var login: String = ""
        fileprivate var password: String = ""
        
        public func called(_ username: String) -> Self{
            self.username = username
            return self
        }
        
        public func withDocumentNumber(_ documentNumber: String) -> Self{
            self.documentNumber = documentNumber
            return self
        }
        
        public func living(at address: String) -> Self{
            self.address = address
            return self
        }
        
        public func withLogin(_ login: String) -> Self{
            self.login = login
            return self
        }
        
        public func withPassword(_ password: String) -> Self{
            self.password = password
            return self
        }
        
        public func build() -> User{
            return User(self)
        }
    }
    
}
