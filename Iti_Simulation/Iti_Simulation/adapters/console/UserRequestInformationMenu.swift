//
//  UserRequestInformationMenu.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 15/10/21.
//

import Foundation

class UserRequetInformationMenu{
    
    let userOperations = UserOperationsImplementation()
    let initialMenu = OpeningMenu()
    
    public func menuLogin(){
        
        let login = Login(userOperations)
        
        print("========LOGIN========")
        print("Entre com seu login: ")
        let loginInfo = readLine().unsafelyUnwrapped
        print("Entre com sua senha: ")
        let password = readLine().unsafelyUnwrapped
        
        do {
            let logged = try login.logIn(UserRequest(loginInfo, password))
            printUserLogged(logged)
            AccountMenu().menu()
        }catch {
            initialMenu.menu()
        }
    }
    
    public func menuRegistry(){
        
        let registry = RegistryUser(userOperations)
        
        print("========REGISTRAR_USUARIO========")
        print("Entre com seu username: ")
        let username = readLine().unsafelyUnwrapped
        print("Entre com seu numero de documento: ")
        let docNumber = readLine().unsafelyUnwrapped
        print("Entre com seu endereco: ")
        let address = readLine().unsafelyUnwrapped
        print("Entre com seu login: ")
        let loginInfo = readLine().unsafelyUnwrapped
        print("Entre com sua senha: ")
        let password = readLine().unsafelyUnwrapped
        
        do {
            let registered = try registry.registryUser(UserRegistryRequest(username, docNumber, address, loginInfo, password))
            printUserRegistered(registered)
            AccountMenu().menu()
        }catch {
            initialMenu.menu()
        }
    }
    
    private func printUserLogged(_ user: User){
            print("User Name: \(user.username)")
            print("Login: \(user.login)")
        }
    
    private func printUserRegistered(_ user: User){
            print("User Name: \(user.username)")
            print("User Name: \(user.address)")
            print("User Name: \(user.documentNumber)")
            print("Login: \(user.login)")
        }
}
