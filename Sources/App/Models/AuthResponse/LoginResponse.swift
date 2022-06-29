//
//  LoginResponse.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let errorMessage: String?
    let user: UserResponse?
}

struct UserResponse: Content {
    let id_user: String
    let user_login: String
    let user_name: String
    let user_lastname: String
}
