//
//  LoginRequest.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
}

