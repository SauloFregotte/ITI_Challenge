//
//  User.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 05/10/21.
//

import Foundation

class User{
    
    public static func builder() -> Builder{
        return Builder()
    }
    
    var username: String
    
    var documentNumber: String
    
    var address: String
    
    var login: String
    
    var password: String
    
    init(_ builder: Builder) {
        self.username = builder.username
        self.documentNumber = builder.documentNumber
        self.address = builder.address
        self.login = builder.login
        self.password = builder.password
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
