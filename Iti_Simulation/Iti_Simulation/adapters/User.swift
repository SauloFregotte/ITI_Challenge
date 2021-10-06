//
//  User.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

//Entity
class User{
    
    public static func builder() -> Builder{
        return Builder()
    }
    
    private var id: Int = 0
    
    private var username: String
    
    private var documentNumber: String
    
    private var address: String
    
    private var login: String
    
    private var password: String
    
    init(builder: Builder) {
        self.username = builder.username
        self.documentNumber = builder.documentNumber
        self.address = builder.address
        self.login = builder.login
        self.password = builder.password
    }
    
    public func registryUser() -> User{
        
        //TODO: saveUser DBInstance.save(self)
        
        return self
    }
    
    public func verifyUserLogin(login: String, password: String) -> Bool{
        
        //TODO: restrict flow
        
        return false
    }
    
    internal class Builder{
        
        fileprivate var username: String = ""
        fileprivate var documentNumber: String = ""
        fileprivate var address: String = ""
        fileprivate var login: String = ""
        fileprivate var password: String = ""
        
        public func called() -> Self{
            self.username = username
            return self
        }
        
        public func withDocumentNumber() -> Self{
            self.documentNumber = documentNumber
            return self
        }
        
        public func livingAt() -> Self{
            self.address = address
            return self
        }
        
        public func withLogin() -> Self{
            self.login = login
            return self
        }
        
        public func withPassword() -> Self{
            self.password = password
            return self
        }
        
        public func build() -> User{
            return User(builder: self)
        }
    }
    
}
