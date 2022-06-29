//
//  ChangeDataRequest.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

struct ChangeDataRequest: Content {
    let id_user: Int
    let username: String
    let password: String
    let email: String
    let gender: String
    let credit_card: String
    let bio: String
}
