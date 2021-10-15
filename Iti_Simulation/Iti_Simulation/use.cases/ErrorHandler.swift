//
//  ErrorHandler.swift
//  Iti_Simulation
//
//  Created by Saulo Fregotte on 08/10/21.
//

import Foundation

enum RequestError: Error{
    case notFound
    case alreadyExists
    case notValid
}
