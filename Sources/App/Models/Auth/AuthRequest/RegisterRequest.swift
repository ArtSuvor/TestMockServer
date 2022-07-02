//
//  RegisterRequest.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

struct RegisterRequest: Content {
    let id_user: String
    let username: String
    let password: String
    let email: String
    let gender: String
    let credit_card: String
    let bio: String
}
